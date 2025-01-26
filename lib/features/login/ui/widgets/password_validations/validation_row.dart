import 'package:flutter/material.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors_manager.dart';
import '../../../../../core/theming/text_styles.dart';

class ValidationRow extends StatelessWidget {
  final bool hasValidated;
  final String text;
  const ValidationRow({
    super.key,
    required this.hasValidated,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: ColorsManager.gray,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13RegularDarkBlue.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: ColorsManager.green,
            decorationThickness: 2,
            color: hasValidated ? ColorsManager.gray : ColorsManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
