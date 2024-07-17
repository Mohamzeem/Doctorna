import 'package:doctorna/core/consts/app_colors.dart';
import 'package:doctorna/core/helpers/font_style.dart';
import 'package:doctorna/features/home/cubit/home_cubit/home_cubit.dart';
import 'package:doctorna/features/home/cubit/home_cubit/home_state.dart';
import 'package:doctorna/features/home/data/models/specialization_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class SpecializationDoctorsList extends StatelessWidget {
  const SpecializationDoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is specializationFailure ||
          current is specializationLoading ||
          current is specializationSuccess,
      builder: (context, state) {
        return state.maybeWhen(
          specializationLoading: () => Shimmer.fromColors(
            baseColor: AppColors.kLighterGrey,
            highlightColor: AppColors.kLighterGrey,
            child: SizedBox(
              height: 100.h,
            ),
          ),
          specializationFailure: (errorHandler) => const SizedBox.shrink(),
          specializationSuccess: (specializationModel) {
            var list = specializationModel.specializationData!;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: SizedBox(
                height: 100.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return SpecializationDoctorsItem(
                      index: index,
                      item: list[index],
                    );
                  },
                  itemCount: list.length,
                ),
              ),
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}

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
