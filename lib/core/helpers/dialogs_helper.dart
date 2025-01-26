import 'package:flutter/material.dart';

import '../theming/colors_manager.dart';
import '../theming/text_styles.dart';
import '../widgets/loading_indicator.dart';
import 'extensions.dart';

class DialogsHelper {
  static void showLoading(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const LoadingIndicator(),
    );
  }

  static void showErrorDialog(BuildContext context, String error) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: ColorsManager.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font15MediumDarkBlue,
        ),
        actions: [
          TextButton(
            child: Text(
              'Got it',
              style: TextStyles.font14SemiBoldBlue,
            ),
            onPressed: () {
              context.pop();
            },
          )
        ],
      ),
    );
  }
}
