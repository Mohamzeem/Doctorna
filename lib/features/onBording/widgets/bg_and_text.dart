import 'package:doctorna/core/consts/app_colors.dart';
import 'package:doctorna/core/helpers/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          height: 420.h,
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
          bottom: 15.h,
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
