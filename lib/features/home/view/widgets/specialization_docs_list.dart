import 'package:doctorna/core/helpers/font_style.dart';
import 'package:doctorna/core/widgets/skelton_shimmer.dart';
import 'package:doctorna/features/home/cubit/home_cubit/home_cubit.dart';
import 'package:doctorna/features/home/cubit/home_cubit/home_state.dart';
import 'package:doctorna/features/home/view/widgets/specialization_docs_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          specializationLoading: () => Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: Column(
              children: [
                SizedBox(
                  height: 100.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) => Column(
                      children: [
                        SkeltonShimmer(
                          shape: BoxShape.circle,
                          height: 70.h,
                          width: 70.w,
                        ),
                        5.verticalSpace,
                        SkeltonShimmer(
                          shape: BoxShape.rectangle,
                          height: 25.h,
                          width: 70.w,
                        ),
                      ],
                    ),
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 30.w);
                    },
                  ),
                ),
              ],
            ),
          ),
          specializationFailure: (errorHandler) => SizedBox(
            height: 100.h,
            child: Text(errorHandler.toString(), style: AppFonts.bold20Black),
          ),
          specializationSuccess: (specializationList) {
            var list = specializationList;
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
