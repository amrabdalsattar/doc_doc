import '../../../../core/helpers/token_helper.dart';
import '../../../../core/networking/dio_factory.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/signup_request_body.dart';
import '../../data/repos/signup_repo.dart';
import 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(this._signupRepo) : super(const SignupState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    if (formKey.currentState!.validate()) {
      emit(const SignupState.signupLoading());
      final response = await _signupRepo.signup(
        SignupRequestBody(
          email: emailController.text,
          name: nameController.text,
          phone: phoneController.text,
          password: passwordController.text,
          passwordConfirmation: passwordConfirmationController.text,
          gender: 0,
        ),
      );
      response.when(
        success: (signupResponse) {
          TokenHelper.saveUserToken(signupResponse.userData!.token ?? '');

          DioFactory.setTokenIntoHeaderAfterLogin(
              signupResponse.userData!.token ?? '');

          emit(SignupState.signupSuccess(signupResponse));
        },
        failure: (apiErrorModel) {
          emit(
            SignupState.signupFailure(apiErrorModel),
          );
        },
      );
    }
  }
}
