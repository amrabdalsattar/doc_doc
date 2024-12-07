import 'colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font24BoldBlack = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: ColorsManager.black,
  );

  static TextStyle font32BoldBlue = TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.w700,
      color: ColorsManager.primaryColor);

  static TextStyle font13RegularGray = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: ColorsManager.gray,
  );

  static TextStyle font16SemiBoldWhite = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: ColorsManager.white,
  );
}
