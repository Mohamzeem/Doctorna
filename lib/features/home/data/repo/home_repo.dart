import 'package:doctorna/core/network/api_error_handler.dart';
import 'package:doctorna/core/network/api_result.dart';
import 'package:doctorna/features/home/data/home_api.dart';
import 'package:doctorna/features/home/data/models/specialization_model.dart';

class HomeRepo {
  final HomeApi homeApi;
  HomeRepo({
    required this.homeApi,
  });

  Future<ApiResult<SpecializationModel>> getSpecializations() async {
    try {
      final result = await homeApi.getSpecializations();
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e.toString()));
    }
  }
}
