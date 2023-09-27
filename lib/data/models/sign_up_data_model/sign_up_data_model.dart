import 'package:json_annotation/json_annotation.dart';

part 'sign_up_data_model.g.dart';

@JsonSerializable()
class SignUpDataModel {
  String? name;
  String? email;
  String? password;

  SignUpDataModel({this.name, this.email, this.password});

  factory SignUpDataModel.fromJson(Map<String, dynamic> json) {
    return _$SignUpDataModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignUpDataModelToJson(this);
}
