import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_handler/api_error_model.dart';

part 'signup_state.freezed.dart';

@freezed
class SignupState<T> with _$SignupState<T> {
  const factory SignupState.initial() = _Initial;

  const factory SignupState.signupLoading() = SignupLoading;
  const factory SignupState.signupSuccess(T data) = SignupSuccess;
  const factory SignupState.signupFailure(ApiErrorModel apiErrorModel) =
      SignupFailure;
}
