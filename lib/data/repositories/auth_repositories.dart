import 'package:todo/data/models/sign_up_data_model/sign_up_data_model.dart';
import 'package:todo/data/models/sign_up_resp_model/sign_up_resp_model.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<bool, SignUpRespModel>> signUp(SignUpDataModel signUpDataModel);
  Future<bool> signIn();
  Future<bool> logout();
}
