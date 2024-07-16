import 'package:doctorna/core/consts/app_colors.dart';
import 'package:doctorna/core/helpers/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerticalDoctorsList extends StatelessWidget {
  const VerticalDoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(top: index == 0 ? 0 : 10.h),
            child: SizedBox(
              height: 120.h,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.r),
                    height: 120.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      color: AppColors.kLighterGrey,
                    ),
                    child: Image.asset('assets/images/doc.png'),
                  ),
                  25.horizontalSpace,
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'doctor name',
                          style: AppFonts.bold20Black,
                        ),
                        Text(
                          'speciality',
                          style: AppFonts.regular14Black,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow.shade500,
                            ),
                            5.horizontalSpace,
                            Text(
                              '3.7 Reviews (105)',
                              style: AppFonts.regular14Black,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
