import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/specializations_response_model.dart';
import 'doctor_specialty_list_view_item.dart';

class DoctorsSpecialtyListView extends StatelessWidget {
  final List<SpecializationData>? specializations;
  const DoctorsSpecialtyListView({super.key, required this.specializations});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 100.h,
      child: ListView.builder(
        itemCount: specializations!.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => DoctorSpecialtyListViewItem(
          specializationData: specializations![index],
          itemIndex: index,
        ),
      ),
    );
  }
}
