import 'package:cached_network_image/cached_network_image.dart';
import 'package:doc_doc/core/widgets/loading_indicator.dart';
import 'package:doc_doc/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/text_styles.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctor? doctor;
  const DoctorsListViewItem({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              imageUrl:
                  'https://t4.ftcdn.net/jpg/02/60/04/09/360_F_260040900_oO6YW1sHTnKxby4GcjCvtypUCWjnQRg5.jpg',
              placeholder: (context, url) => const LoadingIndicator(),
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
                doctor?.name ?? 'Not Specified name',
                style: TextStyles.font18BoldDarkBlue,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(5),
              Text(
                '${doctor!.degree} | ${doctor!.phone}',
                style: TextStyles.font12MediumGray,
              ),
              verticalSpace(5),
              Text(
                doctor!.email ?? 'Not Specified email',
                style: TextStyles.font12MediumGray,
              )
            ],
          ))
        ],
      ),
    );
  }
}
