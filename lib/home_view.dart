import 'package:doctorna/core/consts/app_colors.dart';
import 'package:doctorna/core/helpers/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            30.verticalSpace,
            const LogoAndName(),
            30.verticalSpace,
            const BackGroundAndText(),
            20.verticalSpace,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                style: AppFonts.regular10Grey,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BackGroundAndText extends StatelessWidget {
  const BackGroundAndText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //^ background logo
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.0, 0.4],
            ),
          ),
          child: Image.asset(
            'assets/images/logo.png',
            height: 450,
            width: double.infinity,
            color: AppColors.mainColor.withOpacity(0.1),
          ),
        ),
        // ^ doc image
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.05, 0.4],
            ),
          ),
          child: Image.asset('assets/images/doc.png'),
        ),
        //^ text
        Positioned(
          bottom: -10,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            style: AppFonts.bold32Green,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class LogoAndName extends StatelessWidget {
  const LogoAndName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/logo.png',
          height: 39.h,
          width: 39.w,
        ),
        10.horizontalSpace,
        Text(
          'Doctrona',
          style: AppFonts.bold24Black,
        )
      ],
    );
  }
}
