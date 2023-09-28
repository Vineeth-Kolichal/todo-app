import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo/data/models/sign_in_req_model/sign_in_req_model.dart';
import 'package:todo/data/repositories/auth_repositories.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  AuthRepository repository;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  SignInBloc(this.repository) : super(SignInState.initial()) {
    on<SignInEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true, hasError: false, message: null));
      final result = await repository.signIn(SignInReqModel(
          email: emailController.text.trim(),
          password: passwordController.text.trim()));
      emit(state.copyWith(isLoading: false, message: result));
    });
  }
  Future<void> logout() async {
    await repository.logout();
  }
}
