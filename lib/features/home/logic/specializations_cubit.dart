import 'package:doc_doc/features/home/data/repos/specializations_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'specializations_state.dart';

class SpecializationsCubit extends Cubit<SpecializationsState> {
  final SpecializationsRepo _specializationsRepo;
  SpecializationsCubit(this._specializationsRepo)
      : super(const SpecializationsState.initial());

  void getSpecializations() async {
    emit(const SpecializationsState.specializationsLoading());

    final response = await _specializationsRepo.getSpecializations();

    response.when(
      success: (specializations) => emit(
        SpecializationsState.specializationsLoaded(specializations),
      ),
      failure: (error) => emit(
        SpecializationsState.specializationsError(
            message: error.apiErrorModel.message ?? 'Something went wrong'),
      ),
    );
  }
}
