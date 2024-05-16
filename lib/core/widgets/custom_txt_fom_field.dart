// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:doctorna/core/consts/app_colors.dart';
import 'package:doctorna/core/helpers/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String?) validator;
  final String label;
  final VoidCallback? suffixIconFunction;
  final bool suffixIconShow;
  final bool obscureText;
  final TextInputType keyBoard;
  final int maxLength;
  final Color filled;
  const CustomTextFormField({
    super.key,
    this.controller,
    required this.validator,
    required this.label,
    this.suffixIconFunction,
    this.suffixIconShow = false,
    this.obscureText = false,
    required this.keyBoard,
    this.maxLength = 50,
    this.filled = AppColors.kWhite,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) => validator(value),
      keyboardType: keyBoard,
      inputFormatters: [LengthLimitingTextInputFormatter(maxLength)],
      cursorColor: AppColors.mainColor,
      textInputAction: TextInputAction.done,
      obscureText: obscureText,
      maxLines: 1,
      style: const TextStyle(
          fontSize: 20,
          color: AppColors.mainColor,
          fontWeight: FontWeight.w500),
      decoration: InputDecoration(
        suffixIcon: suffixIconShow
            ? InkWell(
                onTap: suffixIconFunction,
                child: obscureText
                    ? const Icon(
                        Icons.visibility,
                        color: AppColors.mainColor,
                      )
                    : const Icon(
                        Icons.visibility_off,
                        color: AppColors.mainColor,
                      ))
            : const SizedBox(),
        contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
        fillColor: AppColors.kLightGrey,
        filled: true,
        label: Text(
          label,
          style: AppFonts.semiBold14Grey,
        ),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(width: 0.5, color: AppColors.kGrey)),
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(width: 0.5, color: AppColors.kGrey)),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(width: 0.5, color: AppColors.mainColor)),
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(width: 0.5, color: AppColors.mainColor)),
        focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            borderSide: BorderSide(width: 0.5, color: AppColors.mainColor)),
      ),
    );
  }
}
