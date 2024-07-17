import 'package:doctorna/core/consts/app_colors.dart';
import 'package:doctorna/core/helpers/font_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBar extends StatelessWidget {
  const HomeBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Joo', style: AppFonts.bold20Black),
            Text('How Are you Today?', style: AppFonts.regular14Grey),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 22.r,
          backgroundColor: AppColors.kLighterGrey,
          child: SvgPicture.asset('assets/svgs/Notification.svg'),
        )
      ],
    );
  }
}
