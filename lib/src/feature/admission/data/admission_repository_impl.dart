import 'package:injectable/injectable.dart';
import 'package:vetmanager_internship_app/src/core/utils/exception/unexpected_exception.dart';
import 'package:vetmanager_internship_app/src/feature/admission/data/local/local_admission_data_source.dart';
import 'package:vetmanager_internship_app/src/feature/admission/data/remote/remote_admission_data_source.dart';
import 'package:vetmanager_internship_app/src/feature/admission/data/admission_repository.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/admission.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/admissions_list.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/fetch_admissions_list_query.dart';

@Injectable(as: AdmissionRepository)
class AdmissionRepositoryImpl implements AdmissionRepository {
  AdmissionRepositoryImpl(RemoteAdmissionDataSource remoteDataSource,
      LocalAdmissionDataSource localDataSource)
      : _remotenDataSource = remoteDataSource,
        _localDataSource = localDataSource;

  final RemoteAdmissionDataSource _remotenDataSource;
  final LocalAdmissionDataSource _localDataSource;

  @override
  Future<AdmissionsList> fetchAdmissionsList(FetchAdmissionsQuery query) async {
    final cachedData = _localDataSource.fetchAdmissionsList();
    if (cachedData.admissions.isNotEmpty) {
      _checkForAdmissionsListUpdates(cachedData, query);
      return cachedData;
    }

    return _fetchAndCacheAdmissionsList(query);
  }

  Future<void> _checkForAdmissionsListUpdates(
      AdmissionsList oldData, FetchAdmissionsQuery query) async {
    final newData = await _remotenDataSource.fetchAdmissions(query);

    if (_hasDataChanged(oldData, newData)) {
      _localDataSource.cacheAdmissionsList(newData);
    }
  }

  Future<void> _checkForAdmissionUpdates(Admission oldData, int id) async {
    final newData = await _remotenDataSource.fetchAdmission(id);

    if (_hasDataChanged(oldData, newData)) {
      _localDataSource.cacheAdmission(newData);
    }
  }

  bool _hasDataChanged<T>(T oldData, T newData) {
    return oldData != newData;
  }

  Future<AdmissionsList> _fetchAndCacheAdmissionsList(
      FetchAdmissionsQuery query) async {
    try {
      final newData = await _remotenDataSource.fetchAdmissions(query);
      _localDataSource.cacheAdmissionsList(newData);
      return newData;
    } catch (e, s) {
      final cachedData = _localDataSource.fetchAdmissionsList();
      if (cachedData.admissions.isEmpty) return cachedData;
      throw UnexpectedException(message: "No data available", stackTrace: s);
    }
  }

  Future<Admission> _fetchAndCacheAdmission(int id) async {
    try {
      final newData = await _remotenDataSource.fetchAdmission(id);
      _localDataSource.cacheAdmission(newData);
      return newData;
    } catch (e, s) {
      final cachedData = _localDataSource.fetchAdmission(id);
      if (cachedData == null) {
        throw UnexpectedException(message: "No data available", stackTrace: s);
      }
      return cachedData;
    }
  }

  @override
  Future<Admission> fetchAdmission(int id) async {
    final cachedData = _localDataSource.fetchAdmission(id);
    if (cachedData != null) {
      _checkForAdmissionUpdates(cachedData, id);
      return cachedData;
    }

    return _fetchAndCacheAdmission(id);
  }
}
