import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/helpers/images.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Amr!',
              style: TextStyles.font18BoldDarkBlue,
            ),
            verticalSpace(3),
            Text(
              'How Are you Today?',
              style: TextStyles.font12RegularGray,
            ),
          ],
        ),
        CircleAvatar(
          backgroundColor: ColorsManager.moreLighterGray,
          radius: 24,
          child: SvgPicture.asset(Images.notificationBadge),
        ),
      ],
    );
  }
}
