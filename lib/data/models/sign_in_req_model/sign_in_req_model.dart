import 'package:json_annotation/json_annotation.dart';

part 'sign_in_req_model.g.dart';

@JsonSerializable()
class SignInReqModel {
  String? email;
  String? password;

  SignInReqModel({this.email, this.password});

  factory SignInReqModel.fromJson(Map<String, dynamic> json) {
    return _$SignInReqModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignInReqModelToJson(this);
}
