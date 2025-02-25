import 'package:doc_doc/features/home/logic/specializations_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/specializations_response_model.dart';
import 'specialty_list_view_item.dart';

class SpecialtiesListView extends StatefulWidget {
  final List<SpecializationData>? specializations;
  const SpecialtiesListView({super.key, required this.specializations});

  @override
  State<SpecialtiesListView> createState() => _SpecialtiesListViewState();
}

class _SpecialtiesListViewState extends State<SpecialtiesListView> {
  int selectedSpecialtyIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      height: 100.h,
      child: ListView.builder(
        itemCount: widget.specializations!.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedSpecialtyIndex = index;
            });
            context.read<SpecializationsCubit>().getDoctorsList(
                specializationId: widget.specializations?[index].id);
          },
          child: SpecialtyListViewItem(
            specializationData: widget.specializations![index],
            itemIndex: index,
            isSelected: index == selectedSpecialtyIndex,
          ),
        ),
      ),
    );
  }
}
