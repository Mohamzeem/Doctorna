// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'specialization_model.g.dart';

@JsonSerializable()
class SpecializationModel {
  @JsonKey(name: 'data')
  List<SpecializationData>? specializationData;

  SpecializationModel({
    this.specializationData,
  });

  factory SpecializationModel.fromJson(Map<String, dynamic> json) =>
      _$SpecializationModelFromJson(json);
}

@JsonSerializable()
class SpecializationData {
  int? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<DoctorsModel>? doctorsList;

  SpecializationData({
    this.id,
    this.name,
    this.doctorsList,
  });

  factory SpecializationData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationDataFromJson(json);
}

@JsonSerializable()
class DoctorsModel {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  String? degree;
  @JsonKey(name: 'appoint_price')
  dynamic price;

  DoctorsModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.address,
    this.degree,
    required this.price,
  });
  factory DoctorsModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorsModelFromJson(json);
}
