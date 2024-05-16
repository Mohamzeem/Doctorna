import 'package:doctorna/core/helpers/animation.dart';
import 'package:doctorna/core/helpers/font_style.dart';
import 'package:doctorna/features/login/view/widgets/email_and_pass.dart';
import 'package:doctorna/features/login/view/widgets/login_button.dart';
import 'package:doctorna/features/login/view/widgets/remember_and_pass.dart';
import 'package:doctorna/features/login/view/widgets/terms_no_account_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //^ welcome text
            Text(
              'Welcome Back',
              style: AppFonts.bold24Green,
            ),
            10.verticalSpace,
            //^ small text
            Text(
              'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
              style: AppFonts.regular12Grey,
            ),
            20.verticalSpace,
            //^ doc image
            CustomFadeInDown(
              child: Center(
                child: Image.asset(
                  'assets/images/login_doc.png',
                  height: 200.h,
                ),
              ),
            ),
            const EmailAndPassword(),
            const RememberMeAndPassword(),
            const LoginButton(),
            const TermsTextAndDontHaveAccount()
          ],
        ),
      ),
    );
  }
}
