// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:todo/business_logic/sign_in_screen/sign_in_bloc.dart' as _i10;
import 'package:todo/business_logic/sign_up_screen/sign_up_screen_bloc.dart'
    as _i11;
import 'package:todo/business_logic/splash_screen/splash_screen_cubit.dart'
    as _i5;
import 'package:todo/business_logic/todo/todo_bloc.dart' as _i12;
import 'package:todo/data/data_providers/auth_provider/auth_provider.dart'
    as _i9;
import 'package:todo/data/data_providers/todo_data_provider/todo_data_provider.dart'
    as _i7;
import 'package:todo/data/repositories/auth_repositories.dart' as _i8;
import 'package:todo/data/repositories/todo_repository.dart' as _i6;
import 'package:todo/utils/service_locatior/modules/dio_module.dart' as _i13;
import 'package:todo/utils/service_locatior/modules/secure_storage_module.dart'
    as _i14;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    final secureStorageModule = _$SecureStorageModule();
    gh.lazySingleton<_i3.Dio>(() => dioModule.dioInstance);
    gh.lazySingleton<_i4.FlutterSecureStorage>(
        () => secureStorageModule.flutterSecureStorage);
    gh.factory<_i5.SplashScreenCubit>(
        () => _i5.SplashScreenCubit(gh<_i4.FlutterSecureStorage>()));
    gh.lazySingleton<_i6.TodoRepository>(() => _i7.TodoDataProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.lazySingleton<_i8.AuthRepository>(() => _i9.AuthProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.factory<_i10.SignInBloc>(
        () => _i10.SignInBloc(gh<_i8.AuthRepository>()));
    gh.factory<_i11.SignUpScreenBloc>(
        () => _i11.SignUpScreenBloc(gh<_i8.AuthRepository>()));
    gh.factory<_i12.TodoBloc>(() => _i12.TodoBloc(gh<_i6.TodoRepository>()));
    return this;
  }
}

class _$DioModule extends _i13.DioModule {}

class _$SecureStorageModule extends _i14.SecureStorageModule {}
