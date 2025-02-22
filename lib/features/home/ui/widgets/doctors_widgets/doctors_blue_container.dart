import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/images.dart';
import '../../../../../core/theming/text_styles.dart';
import '../nearby_doctors_button.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AspectRatio(
            aspectRatio: 343 / 167,
            child: Container(
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
                  Expanded(
                    flex: 10,
                    child: Text('Book and\nschedule with\nnearest doctor',
                        style: TextStyles.font17MediumWhite),
                  ),
                  const Expanded(
                    flex: 4,
                    child: NearbyDoctorsButton(),
                  ),
                ],
              ),
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
