import '../../data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/loading_indicator.dart';
import '../../logic/specializations_cubit.dart';
import '../../logic/specializations_state.dart';
import 'doctors_list_view.dart';
import 'doctors_specialty_list_view.dart';
import 'section_header.dart';

class SpecializationsBlocBuilder extends StatelessWidget {
  const SpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecializationsCubit, SpecializationsState>(
      bloc: context.read<SpecializationsCubit>(),
      buildWhen: (previous, current) =>
          current is SpecializationsError ||
          current is SpecializationsLoaded ||
          current is SpecializationsLoading,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () => const LoadingIndicator(),
          specializationsError: (errorMessage) => Text(errorMessage),
          specializationsLoaded: (specializationsResponseModel) {
            return setupSuccess(specializationsResponseModel);
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupSuccess(
      SpecializationsResponseModel specializationsResponseModel) {
    var specializationsList = specializationsResponseModel.specializations;

    return Expanded(
      child: Column(
        children: [
          DoctorsSpecialtyListView(
            specializations: specializationsList ?? [],
          ),
          verticalSpace(16),
          const SectionHeader(
            title: 'Recommendation Doctor',
          ),
          verticalSpace(12),
          DoctorsListView(
            doctors: specializationsList?[1].doctors,
          ),
        ],
      ),
    );
  }
}
