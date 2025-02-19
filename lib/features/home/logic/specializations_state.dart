import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/specializations_response_model.dart';

part 'specializations_state.freezed.dart';

@freezed
class SpecializationsState with _$SpecializationsState {
  const factory SpecializationsState.initial() = _Initial;

  // Specialization states
  const factory SpecializationsState.specializationsLoading() =
      SpecializationsLoading;
  const factory SpecializationsState.specializationsLoaded(
          SpecializationsResponseModel specializationsResponseModel) =
      SpecializationsLoaded;
  const factory SpecializationsState.specializationsError(
      {required String message}) = SpecializationsError;
}
