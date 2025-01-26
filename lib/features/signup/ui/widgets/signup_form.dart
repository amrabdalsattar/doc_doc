import '../../../../core/helpers/app_regex.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../logic/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../login/ui/widgets/password_validations/password_validations.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  late TextEditingController passwordController;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialCharacters = false;
  bool hasMinLength = false;

  bool isPasswordObscure = true;
  bool isPasswordConfirmationObscure = true;

  @override
  void initState() {
    passwordController = context.read<SignupCubit>().passwordController;
    setUpPasswordControllerListener();

    super.initState();
  }

  void setUpPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Name',
            controller: context.read<SignupCubit>().nameController,
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  value.length < 2 ||
                  AppRegex.hasNumber(value) ||
                  AppRegex.hasSpecialCharacter(value)) {
                return 'Please enter a valid name';
              }
            },
          ),
          verticalSpace(16),
          CustomTextFormField(
            hintText: 'Phone number',
            keyboardType: TextInputType.phone,
            controller: context.read<SignupCubit>().phoneController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please enter a valid phone number';
              }
            },
          ),
          verticalSpace(16),
          CustomTextFormField(
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
            controller: context.read<SignupCubit>().emailController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
          ),
          verticalSpace(16),
          CustomTextFormField(
            hintText: 'Password',
            controller: context.read<SignupCubit>().passwordController,
            isObscure: isPasswordObscure,
            suffixIcon: InkWell(
              overlayColor:
                  const WidgetStatePropertyAll(ColorsManager.transparent),
              onTap: () {
                setState(() {
                  isPasswordObscure = !isPasswordObscure;
                });
              },
              child: isPasswordObscure
                  ? const Icon(
                      Icons.visibility_off,
                      color: ColorsManager.lightGray,
                    )
                  : const Icon(Icons.visibility,
                      color: ColorsManager.primaryColor),
            ),
            validator: (value) {
              if (value == null || value.isEmpty || !isPasswordValid()) {
                return 'Please enter a valid password';
              }
            },
          ),
          verticalSpace(16),
          CustomTextFormField(
            hintText: 'Password Confirmation',
            controller:
                context.read<SignupCubit>().passwordConfirmationController,
            isObscure: isPasswordConfirmationObscure,
            suffixIcon: InkWell(
              overlayColor:
                  const WidgetStatePropertyAll(ColorsManager.transparent),
              onTap: () {
                setState(() {
                  isPasswordConfirmationObscure =
                      !isPasswordConfirmationObscure;
                });
              },
              child: isPasswordConfirmationObscure
                  ? const Icon(
                      Icons.visibility_off,
                      color: ColorsManager.lightGray,
                    )
                  : const Icon(Icons.visibility,
                      color: ColorsManager.primaryColor),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
              }
              if (!(value == passwordController.text)) {
                return 'Passwords do not match';
              }
            },
          ),
          verticalSpace(24),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasNumber: hasNumber,
            hasSpecialCharacters: hasSpecialCharacters,
            hasMinLength: hasMinLength,
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  bool isPasswordValid() {
    if (!hasLowerCase ||
        !hasMinLength ||
        !hasNumber ||
        !hasSpecialCharacters ||
        !hasUpperCase) {
      return false;
    } else {
      return true;
    }
  }
}
