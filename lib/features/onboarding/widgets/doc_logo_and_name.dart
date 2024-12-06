import 'package:doc_doc/core/helpers/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        SizedBox(
          width: 8.w,
        ),
        Text(
          "Docdoc",
          style: TextStyles.font24BoldBlack,
        )
      ],
    );
  }
}
