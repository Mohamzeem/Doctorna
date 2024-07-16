import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response_model.g.dart';

@JsonSerializable()
class RegisterResponseModel {
  String? message;
  @JsonKey(name: 'data')
  UserDataModel? userData;
  bool? status;
  int? code;
  RegisterResponseModel({
    this.message,
    this.userData,
    this.status,
    this.code,
  });

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseModelFromJson(json);
}

@JsonSerializable()
class UserDataModel {
  String? token;
  @JsonKey(name: 'username')
  String? userName;
  UserDataModel({
    this.token,
    this.userName,
  });

  factory UserDataModel.fromJson(Map<String, dynamic> json) =>
      _$UserDataModelFromJson(json);
}
