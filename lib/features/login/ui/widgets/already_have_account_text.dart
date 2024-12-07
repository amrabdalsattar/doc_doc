import 'package:flutter/material.dart';

import '../../../../core/theming/text_styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Already have an account? ",
            style: TextStyles.font13MediumBlack,
          ),
          TextSpan(
            text: "SignUp",
            style: TextStyles.font14SemiBoldBlue,
          ),
        ],
      ),
    );
  }
}
