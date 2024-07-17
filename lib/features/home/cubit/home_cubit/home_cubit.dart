import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctorna/features/home/cubit/home_cubit/home_state.dart';
import 'package:doctorna/features/home/data/repo/home_repo.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  HomeCubit({required this.homeRepo}) : super(const HomeState.initial());

  void getSpecialization() async {
    emit(const HomeState.specializationLoading());
    final result = await homeRepo.getSpecializations();
    result.when(
      success: (specializatinModel) =>
          emit(HomeState.specializationSuccess(specializatinModel)),
      failure: (errorHandler) =>
          emit(HomeState.specializationFailure(errorHandler)),
    );
  }
}
