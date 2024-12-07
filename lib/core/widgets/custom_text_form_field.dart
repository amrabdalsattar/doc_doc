import 'package:doc_doc/core/theming/colors_manager.dart';
import 'package:doc_doc/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final bool? isObscure;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.isObscure,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        suffixIcon: suffixIcon,
        hintStyle: TextStyles.font14RegularLightGray,
        fillColor: ColorsManager.offWhite,
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorsManager.primaryColor,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              const BorderSide(color: ColorsManager.lighterGray, width: 1.3),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      obscureText: isObscure ?? false,
      style: TextStyles.font14MediumDarkBlue,
      cursorColor: ColorsManager.darkBlue,
    );
  }
}
