import 'package:doctorna/core/helpers/extensions.dart';
import 'package:doctorna/core/helpers/font_style.dart';
import 'package:doctorna/core/route/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsTextAndDontHaveAccount extends StatelessWidget {
  const TermsTextAndDontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        20.verticalSpace,
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'By Registering, you agree to our',
                style: AppFonts.semiBold14Grey,
              ),
              TextSpan(
                  text: ' Terms & Conditions', style: AppFonts.semiBold14Black),
              TextSpan(text: ' and', style: AppFonts.semiBold14Grey),
              TextSpan(
                text: ' PrivacyPolicy.',
                style: AppFonts.semiBold14Black.copyWith(height: 1.5),
              ),
            ],
          ),
        ),
        10.verticalSpace,
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Do you have an account? ',
                style: AppFonts.semiBold14Grey,
              ),
              TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () => context.pushReplacmentName(Routes.loginView),
                text: 'Log In',
                style: AppFonts.regular12Green,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
