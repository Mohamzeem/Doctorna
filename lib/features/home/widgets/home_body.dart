import 'package:doctorna/features/home/widgets/blue_container.dart';
import 'package:doctorna/features/home/widgets/home_bar.dart';
import 'package:doctorna/features/home/widgets/vertical_list.dart';
import 'package:doctorna/features/home/widgets/see_all_speciality.dart';
import 'package:doctorna/features/home/widgets/horizontal_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20.w, 10.h, 20.w, 30.h),
        child: const Column(
          children: [
            HomeBar(),
            BlueContainer(),
            SeeAllSpeciality(),
            HorizontalDoctorsList(),
            VerticalDoctorsList(),
          ],
        ),
      ),
    );
  }
}
