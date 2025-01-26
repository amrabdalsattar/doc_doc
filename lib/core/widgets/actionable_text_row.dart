import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../theming/text_styles.dart';

class ActionableTextRow extends StatelessWidget {
  final String text;
  final String actionText;
  final void Function()? onTap;

  const ActionableTextRow({
    super.key,
    required this.text,
    this.onTap,
    required this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "$text ",
            style: TextStyles.font13MediumBlack,
          ),
          TextSpan(
            text: actionText,
            style: TextStyles.font14SemiBoldBlue,
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
