import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/token_helper.dart';
import '../../../../core/networking/dio_factory.dart';
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
        await TokenHelper.setSecuredUserToken(
            loginResponse.userData!.token ?? '');

        DioFactory.setTokenIntoHeaderAfterLogin(
            loginResponse.userData!.token ?? '');

        emit(LoginState.success(loginResponse));
      }, failure: (apiErrorModel) {
        emit(LoginState.error(apiErrorModel));
      });
    }
  }
}
