import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/images.dart';
import '../../../../../core/theming/colors_manager.dart';

class UnselectedSpecialty extends StatelessWidget {
  const UnselectedSpecialty({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 2),
      child: CircleAvatar(
        backgroundColor: ColorsManager.lightBlue,
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
