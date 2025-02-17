import '../../../../core/helpers/images.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/text_styles.dart';

class DoctorsSpecialtyListView extends StatelessWidget {
  const DoctorsSpecialtyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 100.h,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(
            start: index == 0 ? 0 : 24.w,
          ),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: ColorsManager.lightBlue,
                radius: 32.r,
                child: Center(
                  child: Container(
                      padding: EdgeInsets.all(16.r),
                      child: Image.asset(Images.generalSpecialty)),
                ),
              ),
              verticalSpace(8),
              Text(
                'General',
                style: TextStyles.font12RegularDarkBlue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
