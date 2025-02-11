import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/dialogs_helper.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../logic/cubit/signup_cubit.dart';
import '../../logic/cubit/signup_state.dart';

class SignupButtonBlocConsumer extends StatelessWidget {
  const SignupButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      bloc: context.read<SignupCubit>(),
      listenWhen: (previous, current) =>
          current is SignupLoading ||
          current is SignupFailure ||
          current is SignupSuccess,
      listener: (context, state) {
        state.whenOrNull(
          signupFailure: (error) {
            DialogsHelper.showErrorDialog(context, error);
          },
          signupSuccess: (success) {
            context.pushReplacementNamed(Routes.home);
          },
        );
      },
      builder: (context, state) => CustomButton(
        title: 'Create account',
        isLoading: state is SignupLoading,
        onPressed: () {
          context.read<SignupCubit>().emitSignupStates();
        },
      ),
    );
  }
}
