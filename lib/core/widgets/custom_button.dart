import 'loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors_manager.dart';
import '../theming/text_styles.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  final bool isLoading;
  const CustomButton({
    super.key,
    this.onPressed,
    required this.title,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.h,
      width: double.infinity,
      child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
              backgroundColor:
                  WidgetStateProperty.all(ColorsManager.primaryColor),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)))),
          child: isLoading
              ? SizedBox(
                  height: 30.h,
                  width: 30.w,
                  child: const LoadingIndicator(
                    color: ColorsManager.white,
                  ),
                )
              : Center(
                  child: Text(
                    title,
                    style: TextStyles.font16SemiBoldWhite,
                  ),
                )),
    );
  }
}
