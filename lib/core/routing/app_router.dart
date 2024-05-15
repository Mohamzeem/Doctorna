import 'package:doctorna/core/routing/routes.dart';
import 'package:doctorna/features/onBording/onboarding_view.dart';
import 'package:doctorna/features/signIn/sign_in_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case Routes.onboardingView:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );
      case Routes.signIn:
        return MaterialPageRoute(
          builder: (_) => const SignInView(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('NO Route Find ${settings.name}'),
            ),
          ),
        );
    }
  }
}
