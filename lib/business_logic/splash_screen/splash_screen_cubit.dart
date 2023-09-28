import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:todo/application/routes/routes.dart';

part 'splash_screen_state.dart';
part 'splash_screen_cubit.freezed.dart';

@injectable
class SplashScreenCubit extends Cubit<SplashScreenState> {
  FlutterSecureStorage secureStorage;
  SplashScreenCubit(this.secureStorage)
      : super(const SplashScreenState.initial());

  Future<String> nextScreenRoute() async {
    final value = await secureStorage.read(key: 'token');
    if (value == null) {
      return ScreenRoutes.login;
    } else {
      return ScreenRoutes.home;
    }
  }
}
