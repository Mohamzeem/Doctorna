import 'package:doctorna/core/consts/app_colors.dart';
import 'package:doctorna/core/helpers/font_style.dart';
import 'package:doctorna/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlueContainer extends StatelessWidget {
  const BlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: EdgeInsets.all(16.r),
            height: 165.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(28.r)),
              color: AppColors.mainColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: AppFonts.semiBold20White.copyWith(height: 1.2),
                ),
                CustomButton(
                  onPressed: () {},
                  text: 'Find Doctor',
                  width: 140.w,
                  height: 38.h,
                  backgroundColor: AppColors.kWhite,
                  textStyle: AppFonts.semiBold20Main,
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: 10,
            child: Image.asset(
              'assets/images/Image.png',
              height: 195.h,
              width: 135.w,
            ),
          ),
        ],
      ),
    );
  }
}
