import 'package:doc_doc/core/networking/api_error_handler/api_error_model.dart';

import '../../data/models/login_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.error(ApiErrorModel apiErrorModel) = ErrorState;
  const factory LoginState.success(LoginResponse loginResponse) = Success;
}
