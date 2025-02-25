import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/features/home/ui/widgets/doctors_widgets/doctors_shimmer_loading.dart';
import 'package:doc_doc/features/home/ui/widgets/specializations_widgets/specialty_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../logic/specializations_cubit.dart';
import '../../../logic/specializations_state.dart';
import 'specialties_list_view.dart';

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
          specializationsLoading: () => setupLoading(),
          specializationsError: (apiErrorModel) =>
              Text(apiErrorModel.getAllErrorMessages()),
          specializationsLoaded: (specializations) {
            return SpecialtiesListView(specializations: specializations ?? []);
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}

Widget setupLoading() {
  return Expanded(
      child: Column(
    children: [
      const SpecialtyShimmerLoading(),
      verticalSpace(8),
      const DoctorsShimmerLoading()
    ],
  ));
}
