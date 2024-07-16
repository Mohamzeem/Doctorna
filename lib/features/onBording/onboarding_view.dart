import 'package:doctorna/core/helpers/font_style.dart';
import 'package:doctorna/features/onBording/widgets/bg_and_text.dart';
import 'package:doctorna/features/onBording/widgets/get_started_btn.dart';
import 'package:doctorna/features/onBording/widgets/logo_and_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              30.verticalSpace,
              const LogoAndName(),
              40.verticalSpace,
              const BackGroundAndText(),
              20.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                  style: AppFonts.regular12Grey,
                  textAlign: TextAlign.center,
                ),
              ),
              40.verticalSpace,
              const GetStartedButton()
            ],
          ),
        ),
      ),
    );
  }
}
