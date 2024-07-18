import 'package:doctorna/core/widgets/skelton_shimmer.dart';
import 'package:doctorna/features/home/cubit/home_cubit/home_cubit.dart';
import 'package:doctorna/features/home/cubit/home_cubit/home_state.dart';
import 'package:doctorna/features/home/view/widgets/vertical_docs_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerticalDoctorsList extends StatelessWidget {
  const VerticalDoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is specializationDoctorsSuccess ||
          current is specializationDoctorsFailure ||
          current is specializationDoctorsLoading,
      builder: (context, state) {
        return state.maybeWhen(
          specializationLoading: () => Expanded(
            child: ListView.separated(
              itemCount: 5,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(top: index == 0 ? 10 : 10.h),
                child: SizedBox(
                  height: 120.h,
                  child: Row(
                    children: [
                      SkeltonShimmer(
                        shape: BoxShape.rectangle,
                        height: 120.h,
                        width: 120.w,
                      ),
                      25.horizontalSpace,
                      SkeltonShimmer(
                        shape: BoxShape.rectangle,
                        height: 120.h,
                        width: 220.w,
                      ),
                    ],
                  ),
                ),
              ),
              separatorBuilder: (context, index) {
                return SizedBox(width: 10.h);
              },
            ),
          ),
          specializationDoctorsFailure: (errorHandler) => const SizedBox(
            child: Text('sdsssssssss'),
          ),
          specializationDoctorsSuccess: (doctorsModel) {
            final list = doctorsModel;
            return Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return VerticalDoctorsItem(
                    index: index,
                    item: list[index],
                  );
                },
              ),
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
