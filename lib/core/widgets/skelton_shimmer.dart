import 'package:doctorna/core/consts/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SkeltonShimmer extends StatelessWidget {
  final double? height, width;
  final BoxShape? shape;
  const SkeltonShimmer({
    super.key,
    this.height,
    this.width,
    this.shape,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.kLighterGrey,
      highlightColor: AppColors.kLighterGrey,
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: shape ?? BoxShape.circle,
          color: AppColors.kGrey.withOpacity(0.4),
        ),
      ),
    );
  }
}
