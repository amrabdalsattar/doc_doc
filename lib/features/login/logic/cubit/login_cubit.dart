import 'package:doc_doc/features/login/data/models/login_request_body.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doc_doc/features/login/data/repos/login_repo.dart';

import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    if (formKey.currentState!.validate()) {
      emit(const LoginState.loading());

      final response = await _loginRepo.login(loginRequestBody);
      response.when(success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      }, failure: (error) {
        emit(LoginState.error(
            errorMessage:
                error.apiErrorModel.message ?? "Something went wrong!"));
      });
    }
  }
}
