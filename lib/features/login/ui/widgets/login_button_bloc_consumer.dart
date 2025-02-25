import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/dialogs_helper.dart';
import '../../../../core/helpers/extensions.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../logic/cubit/login_cubit.dart';
import '../../logic/cubit/login_state.dart';

class LoginButtonBlocConsumer extends StatelessWidget {
  const LoginButtonBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      bloc: context.read<LoginCubit>(),
      listenWhen: (previous, current) =>
          current is Success || current is ErrorState || current is Loading,
      listener: (context, state) {
        state.whenOrNull(
          success: (success) {
            context.pushReplacementNamed(Routes.home);
          },
          error: (error) {
            DialogsHelper.showErrorDialog(
                context, error.message ?? 'Unknown error occurred');
          },
        );
      },
      builder: (context, state) => CustomButton(
        title: 'Login',
        isLoading: state is Loading,
        onPressed: () {
          context.read<LoginCubit>().emitLoginStates();
        },
      ),
    );
  }
}
