import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/helpers/images.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/theming/text_styles.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Images.docDocLogo,
        ),
        horizontalSpace(8),
        Text(
          "Docdoc",
          style: TextStyles.font24BoldBlack,
        )
      ],
    );
  }
}
