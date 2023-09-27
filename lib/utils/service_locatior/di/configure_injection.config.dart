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
import 'package:todo/business_logic/sign_up_screen/sign_up_screen_bloc.dart'
    as _i7;
import 'package:todo/data/data_providers/auth_provider/auth_provider.dart'
    as _i6;
import 'package:todo/data/repositories/auth_repositories.dart' as _i5;
import 'package:todo/utils/service_locatior/modules/dio_module.dart' as _i8;
import 'package:todo/utils/service_locatior/modules/secure_storage_module.dart'
    as _i9;

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
    gh.lazySingleton<_i5.AuthRepository>(() => _i6.AuthProvider(
          gh<_i3.Dio>(),
          gh<_i4.FlutterSecureStorage>(),
        ));
    gh.factory<_i7.SignUpScreenBloc>(
        () => _i7.SignUpScreenBloc(gh<_i5.AuthRepository>()));
    return this;
  }
}

class _$DioModule extends _i8.DioModule {}

class _$SecureStorageModule extends _i9.SecureStorageModule {}
