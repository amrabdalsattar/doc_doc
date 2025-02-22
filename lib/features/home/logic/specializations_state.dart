import 'package:doc_doc/core/networking/api_error_handler/api_error_handler.dart';
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
      {required String message}) = SpecializationsError;

  // Doctors
  const factory SpecializationsState.doctorsSuccess(List<Doctor>? doctors) =
      DoctorsSuccess;
  const factory SpecializationsState.doctorsError(ErrorHandler errorHandler) =
      DoctorsError;
}
