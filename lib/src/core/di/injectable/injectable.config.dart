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
import 'package:vetmanager_internship_app/src/core/client/rest_client.dart'
    as _i745;
import 'package:vetmanager_internship_app/src/core/di/injectable/modules/api_module.dart'
    as _i746;
import 'package:vetmanager_internship_app/src/core/utils/storage/secure_storage.dart'
    as _i400;
import 'package:vetmanager_internship_app/src/core/utils/storage/secure_storage_impl.dart'
    as _i447;
import 'package:vetmanager_internship_app/src/feature/admission/data/admission_data_source.dart'
    as _i78;
import 'package:vetmanager_internship_app/src/feature/admission/data/admission_data_source_impl.dart'
    as _i945;
import 'package:vetmanager_internship_app/src/feature/admission/data/admission_repository.dart'
    as _i1038;
import 'package:vetmanager_internship_app/src/feature/admission/data/admission_repository_impl.dart'
    as _i270;
import 'package:vetmanager_internship_app/src/feature/admission/logic/admission/admission_cubit.dart'
    as _i587;
import 'package:vetmanager_internship_app/src/feature/admission/logic/admissions_list/admissions_list_cubit.dart'
    as _i85;

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
    gh.factory<_i745.AppRestClient>(
        () => apiModule.apiDataSource(gh<_i361.Dio>()));
    gh.factory<_i78.AdmissionDataSource>(
        () => _i945.AdmissionDataSourceImpl(gh<_i745.AppRestClient>()));
    gh.factory<_i1038.AdmissionRepository>(
        () => _i270.AdmissionRepositoryImpl(gh<_i78.AdmissionDataSource>()));
    gh.factory<_i85.AdmissionsListCubit>(
        () => _i85.AdmissionsListCubit(gh<_i1038.AdmissionRepository>()));
    gh.factory<_i587.AdmissionCubit>(
        () => _i587.AdmissionCubit(gh<_i1038.AdmissionRepository>()));
    return this;
  }
}

class _$ApiModule extends _i746.ApiModule {}
