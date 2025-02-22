import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:doc_doc/core/networking/api_error_handler/api_error_handler.dart';

import '../data/models/specializations_response_model.dart';
import '../data/repos/specializations_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'specializations_state.dart';

class SpecializationsCubit extends Cubit<SpecializationsState> {
  final SpecializationsRepo _specializationsRepo;
  SpecializationsCubit(this._specializationsRepo)
      : super(const SpecializationsState.initial());

  List<SpecializationData>? specializationsList = [];

  void getSpecializations() async {
    emit(const SpecializationsState.specializationsLoading());

    final response = await _specializationsRepo.getSpecializations();

    response.when(
      success: (specializations) {
        specializationsList = specializations.specializations ?? [];
        getDoctorsList(specializationId: specializationsList?.first.id);
        emit(
          SpecializationsState.specializationsLoaded(specializationsList),
        );
      },
      failure: (error) => emit(
        SpecializationsState.specializationsError(
            message: error.apiErrorModel.message ?? 'Something went wrong'),
      ),
    );
  }

  void getDoctorsList({required int? specializationId}) {
    List<Doctor>? specializationDoctorsList =
        getDoctorsListBySpecializationId(specializationId);

    if (specializationDoctorsList.isNullOrEmpty()) {
      emit(
        SpecializationsState.doctorsError(
          ErrorHandler.handle('No doctors found'),
        ),
      );
    } else {
      emit(
        SpecializationsState.doctorsSuccess(specializationDoctorsList),
      );
    }
  }

  List<Doctor>? getDoctorsListBySpecializationId(int? specializationId) {
    SpecializationData specializationData = specializationsList!.firstWhere(
      (specialization) => specialization.id == specializationId,
    );
    return specializationData.doctors;
  }
}
