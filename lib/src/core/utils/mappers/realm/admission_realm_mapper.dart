import 'package:vetmanager_internship_app/src/core/local_db/model/admission_realm.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/string_extension.dart';
import 'package:vetmanager_internship_app/src/core/utils/mappers/realm/client_realm_mapper.dart';
import 'package:vetmanager_internship_app/src/core/utils/mappers/realm/doctor_realm_mapper.dart';
import 'package:vetmanager_internship_app/src/core/utils/mappers/realm/pet_realm_mapper.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/admission.dart';

extension AdmissionRealmMapper$ToRealm on Admission {
  AdmissionRealm toRealm() => AdmissionRealm(
        id,
        admissionDate,
        clientId,
        patientId,
        typeId,
        admissionLength,
        status.name,
        clinicId,
        directDirection,
        creatorId,
        createDate,
        receptionWriteChannel,
        iconReceptionWriteChannel,
        petData: petData?.toRealm(),
        clientData: clientData?.toRealm(),
        escroterId: escroterId,
        waitTime: waitTime,
        invoicesData: invoicesData,
        doctorData: doctorData?.toRealm(),
        admissionTypeColor: admissionTypeColor,
      );
}

extension AdmissionRealmMapper$ToModel on AdmissionRealm {
  Admission toModel() => Admission(
        id: id,
        admissionDate: admissionDate.toLocal(),
        clientId: clientId,
        patientId: patientId,
        typeId: typeId,
        admissionLength: admissionLength,
        status: status.admissionStatus,
        clinicId: clinicId,
        directDirection: directDirection,
        creatorId: creatorId,
        createDate: createDate.toLocal(),
        escroterId: escroterId,
        receptionWriteChannel: receptionWriteChannel,
        iconReceptionWriteChannel: iconReceptionWriteChannel,
        waitTime: waitTime,
        petData: petData?.toModel(),
        clientData: clientData?.toModel(),
        invoicesData: invoicesData,
        doctorData: doctorData?.toModel(),
        admissionTypeColor: admissionTypeColor,
      );
}

extension AdmissionRealmMapper$FromRealmList on List<AdmissionRealm> {
  List<Admission> toModels() =>
      map((admissionRealm) => admissionRealm.toModel()).toList();
}

extension AdmissionRealmMapper$FromModelsList on List<Admission> {
  List<AdmissionRealm> toRealms() =>
      map((admission) => admission.toRealm()).toList();
}
