import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/extensions.dart';
import '../../../core/helpers/spacing.dart';
import '../../../core/widgets/actionable_text_row.dart';
import '../../../core/widgets/welcome_header.dart';
import '../../login/ui/widgets/terms_and_conditions_text.dart';
import 'widgets/signup_button_bloc_consumer.dart';
import 'widgets/signup_form.dart';

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
                const SignupButtonBlocConsumer(),
                verticalSpace(16),
                const TermsAndConditionsText(),
                verticalSpace(30),
                ActionableTextRow(
                  text: 'Already have an account?',
                  actionText: 'Login',
                  onTap: () {
                    context.pop();
                  },
                ),
                verticalSpace(16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
