import 'package:doctorna/core/helpers/font_style.dart';
import 'package:doctorna/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onPressed: () {},
      text: 'Get Started',
      width: 310,
      height: 50,
      textStyle: AppFonts.semiBold16White,
    );
  }
}
