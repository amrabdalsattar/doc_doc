import 'package:flutter/material.dart';

import '../helpers/spacing.dart';
import '../theming/text_styles.dart';

class WelcomeHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  const WelcomeHeader({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.font24BoldBlue,
        ),
        verticalSpace(8),
        Text(
          subtitle,
          style: TextStyles.font13RegularGray,
        ),
      ],
    );
  }
}
