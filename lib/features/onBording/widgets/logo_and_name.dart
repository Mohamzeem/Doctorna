import 'package:doctorna/core/helpers/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
