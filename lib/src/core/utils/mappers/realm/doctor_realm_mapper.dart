import 'package:vetmanager_internship_app/src/core/local_db/model/admission_realm.dart';

import 'package:vetmanager_internship_app/src/feature/admission/model/doctor.dart';

extension DoctorRealmMapper$ToRealm on Doctor {
  DoctorRealm toRealm() => DoctorRealm(
        doctorId,
        lastName,
        firstName,
        middleName: middleName,
        nickName: nickName,
      );
}

extension DoctorRealmMapper$ToModel on DoctorRealm {
  Doctor toModel() => Doctor(
        doctorId: doctorId,
        lastName: lastName,
        firstName: firstName,
        middleName: middleName,
        nickName: nickName,
      );
}
