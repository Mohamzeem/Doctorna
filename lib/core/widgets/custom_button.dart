import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:doctorna/core/consts/app_colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double width;
  final double height;
  final double? threeRadius;
  final double? lastRadius;
  final Color? backgroundColor;
  final TextStyle textStyle;
  final bool isLoading;
  final TextAlign? textAlign;
  final double? loadingWidth;
  final double? loadingHeight;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.width,
    required this.height,
    this.threeRadius,
    this.lastRadius,
    this.backgroundColor = AppColors.mainColor,
    required this.textStyle,
    this.isLoading = false,
    this.textAlign,
    this.loadingWidth = 30,
    this.loadingHeight = 30,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? AppColors.kBlack,
        // tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        // minimumSize: const Size(100, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(threeRadius ?? 16),
            topRight: Radius.circular(threeRadius ?? 16),
            bottomRight: Radius.circular(threeRadius ?? 16),
            bottomLeft: Radius.circular(lastRadius ?? 16),
          ),
        ),
        fixedSize: Size(width.w, height.h),
      ),
      onPressed: onPressed,
      child: isLoading
          ? const CircularProgressIndicator()
          : Text(
              text,
              style: textStyle,
            ),
    );
  }
}
