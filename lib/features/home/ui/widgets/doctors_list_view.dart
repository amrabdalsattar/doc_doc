import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/text_styles.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(bottom: 24.h),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  "https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg",
                  width: 110.w,
                  height: 120.h,
                  fit: BoxFit.cover,
                ),
              ),
              horizontalSpace(16),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Stevin Osama',
                    style: TextStyles.font18BoldDarkBlue,
                    overflow: TextOverflow.ellipsis,
                  ),
                  verticalSpace(5),
                  Text(
                    'Degree | +201146360500',
                    style: TextStyles.font12MediumGray,
                  ),
                  verticalSpace(5),
                  Text(
                    'example@ex.com',
                    style: TextStyles.font12MediumGray,
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
