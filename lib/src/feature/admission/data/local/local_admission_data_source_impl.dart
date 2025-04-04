import 'package:injectable/injectable.dart';

import 'package:vetmanager_internship_app/src/core/local_db/model/admission_realm.dart';
import 'package:vetmanager_internship_app/src/core/local_db/realm_storage.dart';
import 'package:vetmanager_internship_app/src/core/utils/exception/unexpected_exception.dart';
import 'package:vetmanager_internship_app/src/core/utils/mappers/realm/admission_realm_mapper.dart';
import 'package:vetmanager_internship_app/src/feature/admission/data/local/local_admission_data_source.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/admission.dart';

import 'package:vetmanager_internship_app/src/feature/admission/model/admissions_list.dart';

@Injectable(as: LocalAdmissionDataSource)
class AdmissionDataSourceImpl implements LocalAdmissionDataSource {
  AdmissionDataSourceImpl(RealmStorage realmStorage)
      : _realmStorage = realmStorage;

  final RealmStorage _realmStorage;

  @override
  AdmissionsList fetchAdmissionsList() {
    try {
      final result = _realmStorage.readAll<AdmissionRealm>();

      return AdmissionsList(result.toModels());
    } catch (e, s) {
      throw UnexpectedException(message: e.toString(), stackTrace: s);
    }
  }

  @override
  void cacheAdmissionsList(AdmissionsList admissionsList) {
    try {
      _realmStorage.writeAll(admissionsList.admissions.toRealms());
    } catch (e, s) {
      throw UnexpectedException(message: e.toString(), stackTrace: s);
    }
  }

  @override
  Admission? fetchAdmission(int id) {
    try {
      final result = _realmStorage.read<AdmissionRealm>(id);

      return result?.toModel();
    } catch (e, s) {
      throw UnexpectedException(message: e.toString(), stackTrace: s);
    }
  }

  @override
  void cacheAdmission(Admission admission) {
    try {
      final existingAdmission = fetchAdmission(int.parse(admission.id));
      if (existingAdmission != null) {
        return;
      } else {
        _realmStorage.write(admission.toRealm());
      }
    } catch (e, s) {
      throw UnexpectedException(message: e.toString(), stackTrace: s);
    }
  }
}
