part of 'sign_up_screen_bloc.dart';

@freezed
class SignUpScreenState with _$SignUpScreenState {
  const factory SignUpScreenState(
      {required bool isLoading,
      required bool hasError,
      SignUpRespModel? signUpRespModel}) = _Initial;
  factory SignUpScreenState.intial() =>
      const SignUpScreenState(isLoading: false, hasError: false);
}
