// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  String? message;
  @JsonKey(name: 'data')
  UserDataModel? userData;
  bool? status;
  int? code;
  LoginResponseModel({
    this.message,
    this.userData,
    this.status,
    this.code,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseModelFromJson(json);
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
