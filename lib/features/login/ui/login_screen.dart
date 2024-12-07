import 'package:doc_doc/core/helpers/spacing.dart';
import 'package:doc_doc/core/theming/colors_manager.dart';
import 'package:doc_doc/core/theming/text_styles.dart';
import 'package:doc_doc/core/widgets/custom_button.dart';
import 'package:doc_doc/core/widgets/custom_text_form_field.dart';
import 'package:doc_doc/core/widgets/welcome_header.dart';
import 'package:doc_doc/features/login/ui/widgets/already_have_account_text.dart';
import 'package:doc_doc/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscure = true;
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
              Form(
                key: formKey,
                child: Column(
                  children: [
                    const CustomTextFormField(
                      hintText: 'Email',
                    ),
                    verticalSpace(16),
                    CustomTextFormField(
                      hintText: 'Password',
                      isObscure: isObscure,
                      suffixIcon: InkWell(
                        overlayColor: const WidgetStatePropertyAll(
                            ColorsManager.transparent),
                        onTap: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        child: isObscure
                            ? const Icon(
                                Icons.visibility_off,
                                color: ColorsManager.lightGray,
                              )
                            : const Icon(Icons.visibility,
                                color: ColorsManager.primaryColor),
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpace(24),
              Text(
                "Forgot password?",
                style: TextStyles.font13RegularBlue,
                textAlign: TextAlign.end,
              ),
              verticalSpace(41),
              CustomButton(
                title: 'Login',
                onPressed: () {},
              ),
              verticalSpace(16),
              const TermsAndConditionsText(),
              verticalSpace(60),
              const AlreadyHaveAccountText()
            ],
          ),
        ),
      )),
    );
  }
}
