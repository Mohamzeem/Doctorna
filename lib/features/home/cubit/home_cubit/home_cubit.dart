import 'package:doctorna/core/helpers/extensions.dart';
import 'package:doctorna/core/network/api_error_handler.dart';
import 'package:doctorna/features/home/data/models/specialization_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctorna/features/home/cubit/home_cubit/home_state.dart';
import 'package:doctorna/features/home/data/repo/home_repo.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  HomeCubit({required this.homeRepo}) : super(const HomeState.initial());

  List<SpecializationData> allSpecializationList = [];

  void getSpecialization() async {
    emit(const HomeState.specializationLoading());
    final result = await homeRepo.getSpecializations();
    result.when(
      success: (specializationModel) {
        allSpecializationList = specializationModel.specializationData!;
        getSpecializedDoctors(allSpecializationList.first.id!);
        emit(
          HomeState.specializationSuccess(
              specializationModel.specializationData!),
        );
      },
      failure: (errorHandler) =>
          emit(HomeState.specializationFailure(errorHandler)),
    );
  }

  void getSpecializedDoctors(int specializationId) async {
    emit(const specializationDoctorsLoading());
    List<DoctorsModel> doctorsList =
        homeRepo.getSpecializationById(specializationId, allSpecializationList);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.specializationDoctorsSuccess(doctorsList));
    } else {
      emit(HomeState.specializationDoctorsFailure(
          ErrorHandler.handle('No doctors found')));
    }
  }
}
