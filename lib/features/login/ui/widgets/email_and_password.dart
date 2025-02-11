import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/app_regex.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors_manager.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../logic/cubit/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
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
            controller: context.read<LoginCubit>().passwordController,
            hintText: 'Password',
            isObscure: isObscureText,
            suffixIcon: InkWell(
              overlayColor:
                  const WidgetStatePropertyAll(ColorsManager.transparent),
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: isObscureText
                  ? const Icon(
                      Icons.visibility_off,
                      color: ColorsManager.lightGray,
                    )
                  : const Icon(Icons.visibility,
                      color: ColorsManager.primaryColor),
            ),
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 8) {
                return 'Please enter a valid password';
              }
            },
          ),
          verticalSpace(24),
        ],
      ),
    );
  }
}
