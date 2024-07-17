import 'package:doctorna/core/app/app_globals.dart';
import 'package:doctorna/core/consts/app_colors.dart';
import 'package:doctorna/core/route/app_router.dart';
import 'package:doctorna/core/route/routes.dart';
import 'package:doctorna/features/onBording/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: ScreenUtilInit(
        designSize: const Size(411.42857142857144, 867.4285714285714),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: AppColors.kWhite,
          ),
          home: const OnboardingView(),
          initialRoute: AppGlobals.isUserLoggedIn
              ? Routes.homeView
              : Routes.onboardingView,
          onGenerateRoute: AppRouter().generateRoute,
        ),
      ),
    );
  }
}
