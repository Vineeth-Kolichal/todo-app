// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRespModel _$SignUpRespModelFromJson(Map<String, dynamic> json) =>
    SignUpRespModel(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignUpRespModelToJson(SignUpRespModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
