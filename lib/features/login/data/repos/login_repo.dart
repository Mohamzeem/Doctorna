import 'package:doctorna/core/consts/pref_keys.dart';
import 'package:doctorna/core/helpers/shared_prefs.dart';
import 'package:doctorna/core/network/api_error_handler.dart';
import 'package:doctorna/core/network/api_result.dart';
import 'package:doctorna/core/network/api_services.dart';
import 'package:doctorna/core/network/dio_factory.dart';
import 'package:doctorna/features/login/data/models/login_request_model.dart';
import 'package:doctorna/features/login/data/models/login_response_model.dart';

class LoginRepo {
  final ApiServices apiServices;
  LoginRepo({
    required this.apiServices,
  });

  Future<ApiResult<LoginResponseModel>> login(LoginRequestModel model) async {
    try {
      final result = await apiServices.login(model);
      return ApiResult.success(result);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e.toString()));
    }
  }

  Future<void> saveUserToken(String token) async {
    await SharedPrefHelper.setSecuredString(PrefKeys.userToken, token);
    DioFactory.refreshToken(token);
  }
}
