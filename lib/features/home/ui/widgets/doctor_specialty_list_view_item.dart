import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/images.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/theming/text_styles.dart';
import '../../data/models/specializations_response_model.dart';

class DoctorSpecialtyListViewItem extends StatelessWidget {
  final SpecializationData? specializationData;
  final int itemIndex;
  const DoctorSpecialtyListViewItem(
      {super.key, required this.specializationData, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0 : 24.w,
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
            specializationData?.name ?? 'Specialization',
            style: TextStyles.font12RegularDarkBlue,
          )
        ],
      ),
    );
  }
}
