import 'package:doc_doc/features/home/logic/specializations_cubit.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/ui/home_screen.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../../features/signup/logic/cubit/signup_cubit.dart';
import '../../features/signup/ui/signup_screen.dart';
import '../di/dependency_injection.dart';
import 'routes.dart';

class AppRouter {
  static Map<String, Widget Function(BuildContext)> getRoutes() {
    final routes = {
      Routes.onBoarding: (_) => const OnboardingScreen(),
      Routes.login: (context) => BlocProvider(
            create: (_) => LoginCubit(getIt()),
            child: const LoginScreen(),
          ),
      Routes.signup: (context) => BlocProvider(
            create: (_) => SignupCubit(getIt()),
            child: const SignupScreen(),
          ),
      Routes.home: (_) => BlocProvider(
            create: (context) =>
                SpecializationsCubit(getIt())..getSpecializations(),
            child: const HomeScreen(),
          )
    };

    return routes;
  }
}
