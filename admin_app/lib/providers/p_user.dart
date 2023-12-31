import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_alrayada/data/user/auth/m_auth_request_response.dart';
import 'package:shared_alrayada/providers/p_user.dart';

class UserNotifier extends SharedUserNotifier {
  static final provider =
      StateNotifierProvider<UserNotifier, UserAuthenticatedResponse?>(
    (ref) => UserNotifier(),
  );
}
