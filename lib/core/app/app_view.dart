import 'package:doctorna/core/consts/app_colors.dart';
import 'package:doctorna/core/routing/app_router.dart';
import 'package:doctorna/core/routing/routes.dart';
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
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: AppColors.kWhite,
          ),
          home: const OnboardingView(),
          initialRoute: Routes.onboardingView,
          onGenerateRoute: AppRouter().generateRoute,
        ),
      ),
    );
  }
}
