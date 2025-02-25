import 'package:doc_doc/core/networking/api_error_handler/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/specializations_response_model.dart';

part 'specializations_state.freezed.dart';

@freezed
class SpecializationsState with _$SpecializationsState {
  const factory SpecializationsState.initial() = _Initial;

  // Specializations states
  const factory SpecializationsState.specializationsLoading() =
      SpecializationsLoading;
  const factory SpecializationsState.specializationsLoaded(
      List<SpecializationData>? specializations) = SpecializationsLoaded;
  const factory SpecializationsState.specializationsError(
      ApiErrorModel apiErrorModel) = SpecializationsError;

  // Doctors
  const factory SpecializationsState.doctorsSuccess(List<Doctor>? doctors) =
      DoctorsSuccess;
  const factory SpecializationsState.doctorsError() = DoctorsError;
}
