import 'package:doctorna/core/consts/app_colors.dart';
import 'package:doctorna/core/helpers/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RememberMeAndPassword extends StatefulWidget {
  const RememberMeAndPassword({super.key});

  @override
  State<RememberMeAndPassword> createState() => _RememberMeAndPasswordState();
}

class _RememberMeAndPasswordState extends State<RememberMeAndPassword> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 40.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Transform.scale(
                scale: 1.3,
                child: Checkbox(
                  value: isChecked,
                  activeColor: AppColors.mainColor,
                  onChanged: (val) {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                ),
              ),
              Text(
                'Remember me',
                style: AppFonts.semiBold14Grey,
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Forgot Password?',
              style: AppFonts.regular12Green,
            ),
          ),
        ],
      ),
    );
  }
}
