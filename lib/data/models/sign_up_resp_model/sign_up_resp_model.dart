import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'sign_up_resp_model.g.dart';

@JsonSerializable()
class SignUpRespModel {
  String? message;
  Data? data;

  SignUpRespModel({this.message, this.data});

  factory SignUpRespModel.fromJson(Map<String, dynamic> json) {
    return _$SignUpRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignUpRespModelToJson(this);
}
