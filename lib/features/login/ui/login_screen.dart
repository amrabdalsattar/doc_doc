import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/extensions.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/routing/routes.dart';
import '../../../core/theming/text_styles.dart';
import '../../../core/widgets/actionable_text_row.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/welcome_header.dart';
import '../logic/cubit/login_cubit.dart';
import 'widgets/email_and_password.dart';
import 'widgets/login_bloc_listener.dart';
import 'widgets/terms_and_conditions_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(left: 30.w, right: 30.w, top: 50.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const WelcomeHeader(
                title: 'Welcome Back',
                subtitle:
                    "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
              ),
              verticalSpace(36),
              const EmailAndPassword(),
              Text(
                "Forgot password?",
                style: TextStyles.font13RegularBlue,
                textAlign: TextAlign.end,
              ),
              verticalSpace(41),
              CustomButton(
                title: 'Login',
                onPressed: () {
                  context.read<LoginCubit>().emitLoginStates();
                },
              ),
              verticalSpace(16),
              const TermsAndConditionsText(),
              verticalSpace(60),
              ActionableTextRow(
                text: "Don't have an account?",
                actionText: 'SignUp',
                onTap: () {
                  context.pushNamed(Routes.signup);
                },
              ),
              const LoginBlocListener(),
            ],
          ),
        ),
      )),
    );
  }
}
