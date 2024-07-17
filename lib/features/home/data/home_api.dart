import 'package:dio/dio.dart';
import 'package:doctorna/core/network/api_consts.dart';
import 'package:doctorna/features/home/data/models/specialization_model.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api.g.dart';

@RestApi(baseUrl: ApiConsts.apiBaseUrl)
abstract class HomeApi {
  factory HomeApi(Dio dio, {String baseUrl}) = _HomeApi;

  @GET(ApiConsts.apiSpecialization)
  Future<SpecializationModel> getSpecializations();
}
