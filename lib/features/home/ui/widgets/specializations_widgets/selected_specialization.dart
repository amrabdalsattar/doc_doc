import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/images.dart';
import '../../../../../core/theming/colors_manager.dart';

class SelectedSpecialty extends StatelessWidget {
  const SelectedSpecialty({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 2),
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorsManager.darkBlue.withOpacity(.3),
        ),
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
        backgroundColor: ColorsManager.primaryColor,
        radius: 32.r,
        child: Center(
          child: Container(
            padding: EdgeInsets.all(16.r),
            child: Image.asset(
              Images.generalSpecialty,
              height: 40.h,
              width: 40.w,
            ),
          ),
        ),
      ),
    );
  }
}
