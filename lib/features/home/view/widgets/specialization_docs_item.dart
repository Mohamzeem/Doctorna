import 'package:doctorna/core/consts/app_colors.dart';
import 'package:doctorna/core/helpers/font_style.dart';
import 'package:doctorna/features/home/data/models/specialization_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationDoctorsItem extends StatelessWidget {
  final SpecializationData? item;
  final int index;
  const SpecializationDoctorsItem({
    super.key,
    required this.index,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: index == 0 ? 0 : 25.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 35.r,
            backgroundColor: AppColors.kLighterGrey,
            child: Image.asset(
              'assets/images/speciality.png',
              height: 55.h,
            ),
          ),
          5.verticalSpace,
          Text(
            item!.name!,
            style: AppFonts.regular14Black,
          )
        ],
      ),
    );
  }
}
