import 'package:doctorna/core/helpers/font_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsTextAndDontHaveAccount extends StatelessWidget {
  const TermsTextAndDontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        40.verticalSpace,
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                  text: 'By logging, you agree to our',
                  style: AppFonts.semiBold14Grey),
              TextSpan(
                  text: ' Terms & Conditions', style: AppFonts.semiBold14Black),
              TextSpan(text: ' and', style: AppFonts.semiBold14Grey),
              TextSpan(
                  text: ' PrivacyPolicy.',
                  style: AppFonts.semiBold14Black.copyWith(height: 1.5)),
            ],
          ),
        ),
        10.verticalSpace,
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                  text: 'Already don\'t have an account? ',
                  style: AppFonts.semiBold14Grey),
              TextSpan(text: 'Sign Up', style: AppFonts.regular12Green),
            ],
          ),
        ),
      ],
    );
  }
}
