import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/dialogs_helper.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../logic/cubit/signup_cubit.dart';
import '../../logic/cubit/signup_state.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      bloc: context.read<SignupCubit>(),
      listenWhen: (previous, current) =>
          current is SignupLoading ||
          current is SignupFailure ||
          current is SignupSuccess,
      listener: (context, state) {
        state.whenOrNull(
          signupLoading: () {
            DialogsHelper.showLoading(context);
          },
          signupFailure: (error) {
            context.pop();
            DialogsHelper.showErrorDialog(context, error);
          },
          signupSuccess: (success) {
            context.pop();
            context.pushReplacementNamed(Routes.home);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
