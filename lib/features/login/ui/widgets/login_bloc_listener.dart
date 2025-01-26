import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/dialogs_helper.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../logic/cubit/login_cubit.dart';
import '../../logic/cubit/login_state.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      bloc: context.read<LoginCubit>(),
      listenWhen: (previous, current) =>
          current is Success || current is ErrorState || current is Loading,
      listener: (context, state) {
        state.whenOrNull(
          success: (success) {
            context.pop();
            context.pushReplacementNamed(Routes.home);
          },
          loading: () {
            DialogsHelper.showLoading(context);
          },
          error: (error) {
            context.pop();
            DialogsHelper.showErrorDialog(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
