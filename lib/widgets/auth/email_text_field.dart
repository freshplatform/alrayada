import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../l10n/app_localizations.dart';
import '../../utils/validators/auth_validator.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    required this.controller,
    required this.customError,
    required this.textInputAction,
    super.key,
  });

  final TextEditingController controller;
  final String? customError;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: context.loc.emailAddress,
      child: PlatformTextFormField(
        controller: controller,
        textInputAction: textInputAction,
        keyboardType: TextInputType.emailAddress,
        autocorrect: false,
        enableSuggestions: true,
        autofillHints: const [AutofillHints.email],
        textCapitalization: TextCapitalization.none,
        hintText: context.loc.emailAddress,
        cupertino: (_, __) => CupertinoTextFormFieldData(
          prefix: const Icon(CupertinoIcons.mail),
          placeholder: context.loc.emailAddress,
        ),
        material: (_, __) => MaterialTextFormFieldData(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.mail),
            labelText: context.loc.emailAddress,
          ),
        ),
        minLines: 1,
        maxLines: 1,
        validator: (email) {
          if (customError != null) {
            return customError;
          }
          return AuthValidator.validateEmail(
            email ?? '',
            localizations: context.loc,
          );
        },
      ),
    );
  }
}