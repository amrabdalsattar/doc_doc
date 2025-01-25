import 'package:doc_doc/core/helpers/extensions.dart';
import 'package:doc_doc/core/routing/routes.dart';
import 'package:doc_doc/core/theming/colors_manager.dart';
import 'package:doc_doc/core/theming/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/loading_indicator.dart';
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
            showDialog(
              context: context,
              builder: (context) => const LoadingIndicator(),
            );
          },
          error: (error) {
            setUpErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setUpErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: ColorsManager.red,
          size: 32,
        ),
        content: Text(
          error,
          style: TextStyles.font15MediumDarkBlue,
        ),
        actions: [
          TextButton(
            child: Text(
              'Got it',
              style: TextStyles.font14SemiBoldBlue,
            ),
            onPressed: () {
              context.pop();
            },
          )
        ],
      ),
    );
  }
}
