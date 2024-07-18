import 'package:doctorna/core/network/api_error_handler.dart';
import 'package:doctorna/features/home/data/models/specialization_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.specializationLoading() = specializationLoading;
  const factory HomeState.specializationSuccess(
      List<SpecializationData> specializationList) = specializationSuccess;
  const factory HomeState.specializationFailure(ErrorHandler errorHandler) =
      specializationFailure;

  const factory HomeState.specializationDoctorsLoading() =
      specializationDoctorsLoading;
  const factory HomeState.specializationDoctorsSuccess(
      List<DoctorsModel> doctorsModel) = specializationDoctorsSuccess;
  const factory HomeState.specializationDoctorsFailure(
      ErrorHandler errorHandler) = specializationDoctorsFailure;
}
