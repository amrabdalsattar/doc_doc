import '../theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/text_styles.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  const CustomButton({super.key, this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
            backgroundColor:
                WidgetStateProperty.all(ColorsManager.primaryColor),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: WidgetStateProperty.all(Size(double.infinity, 52.h)),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)))),
        child: Center(
          child: Text(
            title,
            style: TextStyles.font16SemiBoldWhite,
          ),
        ));
  }
}
