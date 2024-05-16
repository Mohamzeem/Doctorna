import 'package:doctorna/core/route/routes.dart';
import 'package:doctorna/features/home/home_view.dart';
import 'package:doctorna/features/onBording/onboarding_view.dart';
import 'package:doctorna/features/login/view/sign_in_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case Routes.onboardingView:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (_) => const SignInView(),
        );
      case Routes.homeView:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
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
