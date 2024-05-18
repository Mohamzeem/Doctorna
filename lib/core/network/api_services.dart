import 'package:dio/dio.dart';
import 'package:doctorna/core/network/api_conts.dart';
import 'package:doctorna/features/login/data/models/login_request_model.dart';
import 'package:doctorna/features/login/data/models/login_response_model.dart';
import 'package:doctorna/features/register/data/models/register_request_model.dart';
import 'package:doctorna/features/register/data/models/register_response_model.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
part 'api_services.g.dart';

@RestApi(baseUrl: ApiConsts.apiBaseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String baseUrl}) = _ApiServices;

  @POST(ApiConsts.apiLogIn)
  Future<LoginResponseModel> login(
    @Body() LoginRequestModel loginRequestModel,
  );

  @POST(ApiConsts.apiRegister)
  Future<RegisterResponseModel> register(
    @Body() RegisterRequestModel registerRequestModel,
  );
}
