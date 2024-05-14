import 'package:doctorna/core/consts/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppFonts {
  static TextStyle bold24Black = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.kBlack,
  );

  static TextStyle bold32Green = TextStyle(
    fontSize: 32.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.mainColor,
  );

  static TextStyle regular10Grey = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w300,
    color: AppColors.kGrey,
  );
}
