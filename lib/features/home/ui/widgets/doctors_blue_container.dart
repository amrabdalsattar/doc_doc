import '../../../../core/helpers/images.dart';
import '../../../../core/helpers/spacing.dart';
import 'nearby_doctors_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/text_styles.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 165.h,
            padding: EdgeInsets.only(
              top: 12.h,
              bottom: 15.h,
              left: 18.w,
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Images.nearbyDoctorsCardBackground),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Book and\nschedule with\nnearest doctor',
                    style: TextStyles.font17MediumWhite),
                verticalSpace(15),
                const Expanded(
                  child: NearbyDoctorsButton(),
                ),
              ],
            ),
          ),
          Positioned(
            right: 16,
            top: 0,
            child: Image.asset(
              Images.femaleDoctor,
              height: 200.h,
            ),
          )
        ],
      ),
    );
  }
}
