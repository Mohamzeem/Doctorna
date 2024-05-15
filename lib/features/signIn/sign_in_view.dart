import 'package:doctorna/core/helpers/font_style.dart';
import 'package:doctorna/core/widgets/custom_button.dart';
import 'package:doctorna/core/widgets/custom_txt_fom_field.dart';
import 'package:doctorna/features/signIn/widgets/remember_and_pass.dart';
import 'package:doctorna/features/signIn/widgets/terms_no_account_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  bool obsecured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: AppFonts.bold24Green,
                ),
                20.verticalSpace,
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: AppFonts.regular12Grey,
                ),
                30.verticalSpace,
                const CustomTextFormField(
                  label: 'Email',
                  keyBoard: TextInputType.emailAddress,
                ),
                20.verticalSpace,
                CustomTextFormField(
                  label: 'Password',
                  obscureText: obsecured,
                  keyBoard: TextInputType.visiblePassword,
                  suffixIconShow: true,
                  suffixIconFunction: () => setState(() {
                    obsecured = !obsecured;
                  }),
                ),
                20.verticalSpace,
                const RememberMeAndPassword(),
                30.verticalSpace,
                CustomButton(
                  onPressed: () {},
                  text: 'Sign In',
                  width: 400,
                  height: 50,
                  textStyle: AppFonts.semiBold10White,
                ),
                130.verticalSpace,
                const TermsTextAndDontHaveAccount()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
