import 'package:doctorna/core/network/api_error_handler.dart';
import 'package:doctorna/core/network/api_result.dart';
import 'package:doctorna/core/network/api_services.dart';
import 'package:doctorna/features/register/data/models/register_request_model.dart';
import 'package:doctorna/features/register/data/models/register_response_model.dart';

class RegisterRepo {
  final ApiServices apiServices;
  RegisterRepo({
    required this.apiServices,
  });

  Future<ApiResult<RegisterResponseModel>> register(
      RegisterRequestModel model) async {
    try {
      final result = await apiServices.register(model);
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
