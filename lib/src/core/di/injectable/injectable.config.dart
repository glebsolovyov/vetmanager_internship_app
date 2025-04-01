// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:vetmanager_internship_app/src/core/di/injectable/modules/api_module.dart'
    as _i746;
import 'package:vetmanager_internship_app/src/core/utils/storage/secure_storage.dart'
    as _i400;
import 'package:vetmanager_internship_app/src/core/utils/storage/secure_storage_impl.dart'
    as _i447;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final apiModule = _$ApiModule();
    gh.factory<_i361.Dio>(() => apiModule.client);
    gh.singleton<_i400.SecureStorage>(() => _i447.SecureStorageImpl.standard());
    return this;
  }
}

class _$ApiModule extends _i746.ApiModule {}
