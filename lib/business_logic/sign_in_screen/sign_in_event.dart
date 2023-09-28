part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.signIn() = SignIn;
  const factory SignInEvent.logout() = Logout;
}