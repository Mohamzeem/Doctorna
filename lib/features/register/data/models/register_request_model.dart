import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request_model.g.dart';

@JsonSerializable()
class RegisterRequestModel {
  final String email;
  final String name;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String confirmPassword;
  final String phone;
  final String gender;
  RegisterRequestModel({
    required this.email,
    required this.name,
    required this.password,
    required this.confirmPassword,
    required this.phone,
    required this.gender,
  });

  Map<String, dynamic> toJson() => _$RegisterRequestModelToJson(this);
}
