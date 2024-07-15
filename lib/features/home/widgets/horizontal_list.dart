import 'package:doctorna/core/consts/app_colors.dart';
import 'package:doctorna/core/helpers/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalDoctorsList extends StatelessWidget {
  const HorizontalDoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 100.h,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: index == 0 ? 0 : 28.w),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 35.r,
                    backgroundColor: AppColors.kLighterGrey,
                    child: const Icon(Icons.medical_services_outlined),
                  ),
                  5.verticalSpace,
                  Text(
                    'speciality $index',
                    style: AppFonts.regular14Black,
                  )
                ],
              ),
            );
          },
          itemCount: 10,
        ),
      ),
    );
  }
}
