import 'package:doc_doc/features/home/data/models/specializations_response_model.dart';
import 'package:doc_doc/features/home/logic/specializations_cubit.dart';
import 'package:doc_doc/features/home/logic/specializations_state.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors_widgets/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpers/spacing.dart';
import '../section_header.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecializationsCubit, SpecializationsState>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsSuccess: (doctors) => setupSuccess(doctors),
          doctorsError: () => const Text(''),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupSuccess(List<Doctor>? doctors) {
    return Expanded(
      child: Column(
        children: [
          const SectionHeader(
            title: 'Recommendation Doctor',
          ),
          verticalSpace(8),
          DoctorsListView(
            doctors: doctors,
          ),
        ],
      ),
    );
  }
}
