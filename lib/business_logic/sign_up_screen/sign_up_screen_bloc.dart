import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo/data/models/sign_up_data_model/sign_up_data_model.dart';
import 'package:todo/data/models/sign_up_resp_model/sign_up_resp_model.dart';
import 'package:todo/data/repositories/auth_repositories.dart';

part 'sign_up_screen_event.dart';
part 'sign_up_screen_state.dart';
part 'sign_up_screen_bloc.freezed.dart';

@injectable
class SignUpScreenBloc extends Bloc<SignUpScreenEvent, SignUpScreenState> {
  AuthRepository authRepository;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();
  SignUpScreenBloc(this.authRepository) : super(SignUpScreenState.intial()) {
    on<SignUp>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, hasError: false, signUpRespModel: null));
      final result = await authRepository.signUp(
        SignUpDataModel(
          name: nameController.text.trim(),
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        ),
      );
      final newState = result.fold((l) {
        return state.copyWith(isLoading: false, hasError: true);
      }, (resp) {
        return state.copyWith(
            isLoading: false, hasError: false, signUpRespModel: resp);
      });
      nameController.clear();
      emailController.clear();
      passwordController.clear();
      emit(newState);
    });
  }
  @override
  Future<void> close() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    return super.close();
  }
}
