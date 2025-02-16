import 'package:flutter/material.dart';

import '../../../../core/theming/text_styles.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyles.font18SemiBoldDarkBlue,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'See All',
            style: TextStyles.font12RegularPrimary,
          ),
        ),
      ],
    );
  }
}
