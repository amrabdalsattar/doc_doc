import 'package:doc_doc/core/theming/text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "By logging, you agree to our",
            style: TextStyles.font13RegularGray,
          ),
          TextSpan(
            text: " Terms & Conditions",
            style: TextStyles.font13MediumBlack,
          ),
          TextSpan(
            text: " and",
            style: TextStyles.font13RegularGray,
          ),
          TextSpan(
            text: " Privacy Policy",
            style: TextStyles.font13MediumBlack.copyWith(height: 1.6),
          ),
        ],
      ),
    );
  }
}
