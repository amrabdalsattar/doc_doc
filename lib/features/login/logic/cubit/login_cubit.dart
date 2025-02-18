import 'package:doc_doc/core/helpers/constants.dart';
import 'package:doc_doc/core/helpers/shared_preferences_helper.dart';
import 'package:doc_doc/core/networking/dio_factory.dart';
import 'package:doc_doc/features/login/data/models/login_response.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/login_request_body.dart';
import '../../data/repos/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  void emitLoginStates() async {
    if (formKey.currentState!.validate()) {
      emit(const LoginState.loading());

      final response = await _loginRepo.login(LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ));

      response.when(success: (loginResponse) async {
        if (loginResponse is LoginResponse) {
          await saveUserToken(loginResponse.userData!.token ?? '');
          emit(LoginState.success(loginResponse));
        }
      }, failure: (error) {
        emit(LoginState.error(
            errorMessage:
                error.apiErrorModel.message ?? "Something went wrong!"));
      });
    }
  }

  Future<void> saveUserToken(String token) async {
    await SharedPreferencesHelper.setData(
        SharedPreferencesKeys.userToken, token);
    DioFactory.setTokenIntoHeaderAfterLogin(token);
  }
}
