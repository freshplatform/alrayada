import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'data/user/firebase_auth_repository.dart';
import 'firebase_options.dart';
import 'l10n/app_localizations.dart';
import 'logic/auth/auth_cubit.dart';
import 'logic/connection/connection_cubit.dart';
import 'logic/settings/settings_cubit.dart';
import 'screens/app_router.dart';
import 'utils/app_logger.dart';
import 'utils/env.dart';
import 'utils/server.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorage.webStorageDirectory
          : await getApplicationDocumentsDirectory(),
    );
    await dotenv.load(fileName: '.env');

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };

    if (kDebugMode && getEnvironmentVariables().useDevServer) {
      ServerConfigurations.baseUrl =
          await ServerConfigurations.getDevelopmentBaseUrl();
      var host = 'localhost';
      if (!kIsWeb) {
        final deviceInfoPlugin = DeviceInfoPlugin();
        if (defaultTargetPlatform == TargetPlatform.android &&
            (await deviceInfoPlugin.androidInfo).isPhysicalDevice) {
          host = getEnvironmentVariables().developmentIpAddress;
        }
        if (defaultTargetPlatform == TargetPlatform.iOS &&
            (await deviceInfoPlugin.iosInfo).isPhysicalDevice) {
          host = getEnvironmentVariables().developmentIpAddress;
        }
      }
      await FirebaseAuth.instance.useAuthEmulator(host, 9099);
      await FirebaseStorage.instance.useStorageEmulator(host, 9199);
      FirebaseFirestore.instance.useFirestoreEmulator(host, 8080);
      FirebaseFunctions.instance.useFunctionsEmulator(host, 5001);
    }

    runApp(const MyApp());
  } catch (e) {
    AppLogger.error(
      e.toString(),
      error: e,
    );
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            body: Center(
              child: Text(e.toString()),
            ),
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ConnectionCubit(
            connectivity: Connectivity(),
          ),
        ),
        BlocProvider(
          create: (context) => SettingsCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(
            authRepository: FirebaseAuthRepository(),
          ),
        ),
      ],
      child: BlocBuilder<SettingsCubit, SettingsState>(
        buildWhen: (previous, current) =>
            previous.themeMode != current.themeMode ||
            previous.languague != current.languague,
        builder: (context, state) {
          AppLogger.info('Building the app widget...');
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            onGenerateTitle: (context) => context.loc.appName,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            routerConfig: AppRouter.router,
            theme: ThemeData(
              useMaterial3: true,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.green,
                brightness: Brightness.light,
              ),
            ),
            darkTheme: ThemeData(
              useMaterial3: true,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.green,
                brightness: Brightness.dark,
              ),
            ),
            themeMode: state.themeMode,
            locale: state.languague == AppLanguague.system
                ? null
                : Locale(state.languague.name),
          );
        },
      ),
    );
  }
}
