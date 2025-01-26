import '../../../core/widgets/actionable_text_row.dart';
import '../logic/cubit/signup_cubit.dart';
import 'widgets/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/welcome_header.dart';
import '../../login/ui/widgets/terms_and_conditions_text.dart';
import 'widgets/signup_bloc_listener.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const WelcomeHeader(
                  title: 'Create Account',
                  subtitle:
                      "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                ),
                verticalSpace(36),
                const SignupForm(),
                verticalSpace(40),
                CustomButton(
                  title: 'Login',
                  onPressed: () {
                    context.read<SignupCubit>().emitSignupStates();
                  },
                ),
                verticalSpace(16),
                const TermsAndConditionsText(),
                verticalSpace(30),
                const ActionableTextRow(
                  text: 'Already have an account?',
                  actionText: 'Login',
                ),
                verticalSpace(16),
                const SignupBlocListener(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
