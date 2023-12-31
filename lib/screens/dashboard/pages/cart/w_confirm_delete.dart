import 'package:flutter/material.dart' show Icons;
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../../../../extensions/build_context.dart';

class ConfirmDeleteCartItemDialog extends StatelessWidget {
  const ConfirmDeleteCartItemDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final translations = context.loc;

    return PlatformAlertDialog(
      title: Text(translations.remove_cart_item),
      content: Text(translations.are_you_sure_you_want_to_remove_cart_item),
      material: (context, platform) =>
          MaterialAlertDialogData(icon: const Icon(Icons.delete)),
      actions: [
        PlatformTextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(translations.no),
        ),
        PlatformTextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(translations.yes),
        ),
      ],
    );
  }
}
