import 'package:doctorna/core/helpers/font_style.dart';
import 'package:doctorna/features/register/view/widgets/register_button.dart';
import 'package:doctorna/features/register/view/widgets/register_fields.dart';
import 'package:doctorna/features/register/view/widgets/terms_no_account_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

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
              'Create Account',
              style: AppFonts.bold24Green,
            ),
            10.verticalSpace,
            //^ small text
            Text(
              'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
              style: AppFonts.regular12Grey,
            ),
            15.verticalSpace,
            const RegisterFields(),
            const RegisterButton(),
            const TermsTextAndDontHaveAccount()
          ],
        ),
      ),
    );
  }
}
