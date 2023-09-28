part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState(
      {String? message,
      required bool isLoading,
      required bool hasError}) = _Initial;
  factory SignInState.initial() =>
      const SignInState(isLoading: false, hasError: false);
}
