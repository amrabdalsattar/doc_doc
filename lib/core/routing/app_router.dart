import 'package:doc_doc/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

import 'routes.dart';

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case Routes.login:
        return MaterialPageRoute(builder: (_) => Container());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              Center(child: Text("No Route found for ${settings.name}")),
        );
    }
  }
}
