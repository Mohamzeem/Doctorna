import 'package:doctorna/core/helpers/font_style.dart';
import 'package:flutter/material.dart';

class SeeAllRecommanded extends StatelessWidget {
  const SeeAllRecommanded({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Recommanded Doctors',
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
    );
  }
}
