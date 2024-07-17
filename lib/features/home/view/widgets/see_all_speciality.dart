import 'package:doctorna/core/helpers/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeeAllSpeciality extends StatelessWidget {
  const SeeAllSpeciality({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Doctor Speciality',
            style: AppFonts.bold20Black,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              'See All',
              style: AppFonts.semiBold20Main,
            ),
          ),
        ],
      ),
    );
  }
}
