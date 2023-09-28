import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:todo/data/models/sign_in_req_model/sign_in_req_model.dart';
import 'package:todo/data/models/sign_up_data_model/sign_up_data_model.dart';
import 'package:todo/data/models/sign_up_resp_model/sign_up_resp_model.dart';
import 'package:todo/data/repositories/auth_repositories.dart';
import 'package:todo/utils/api_endpoints/api_endpoints.dart';

@LazySingleton(as: AuthRepository)
@injectable
class AuthProvider implements AuthRepository {
  final Dio dio;
  final FlutterSecureStorage secureStorage;
  AuthProvider(this.dio, this.secureStorage);

  @override
  Future<void> logout() async {
    try {
      final token = await secureStorage.read(key: 'token');
      await secureStorage.delete(key: 'token');
      dio.options.headers["Authorization"] = 'Bearer $token';
      dio.get(ApiEndpoints.logoutUrl);
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Future<String> signIn(SignInReqModel signInReqModel) async {
    try {
      final response =
          await dio.post(ApiEndpoints.signInUrl, data: signInReqModel.toJson());
      if (response.statusCode == 200) {
        final token = response.data['token'];
        await secureStorage.write(key: 'token', value: token);
        return response.data['message'];
      } else {
        return 'Something error';
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return e.response?.data['message'];
      } else {
        return "Something error";
      }
    } catch (e) {
      return "Something error";
    }
  }

  @override
  Future<Either<bool, SignUpRespModel>> signUp(
      SignUpDataModel signUpDataModel) async {
    log('${signUpDataModel.toJson()}');
    try {
      final response = await dio.post(ApiEndpoints.signUpUrl,
          data: signUpDataModel.toJson());
      if (response.statusCode == 201) {
        final respModel = SignUpRespModel.fromJson(response.data);
        return Right(respModel);
      } else {
        return const Left(false);
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return Right(SignUpRespModel.fromJson(e.response?.data));
      } else {
        return const Left(false);
      }
    }
  }
}
