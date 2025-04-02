import 'package:vetmanager_internship_app/src/core/utils/mappers/client_mapper.dart';
import 'package:vetmanager_internship_app/src/core/utils/mappers/doctor_mapper.dart';
import 'package:vetmanager_internship_app/src/core/utils/mappers/pet_mapper.dart';
import 'package:vetmanager_internship_app/src/feature/admission/data/dto/admission_dto.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/admission.dart';

extension AdmissionDtoMapper on AdmissionDto {
  Admission toModel() => Admission(
        id: id,
        admissionDate: admissionDate,
        clientId: clientId,
        patientId: patientId,
        typeId: typeId,
        admissionLength: admissionLength,
        status: status,
        clinicId: clinicId,
        directDirection: directDirection,
        creatorId: creatorId,
        createDate: createDate,
        escroterId: escroterId,
        receptionWriteChannel: receptionWriteChannel,
        iconReceptionWriteChannel: iconReceptionWriteChannel,
        waitTime: waitTime,
        petData: petData.toModel(),
        clientData: clientData.toModel(),
        invoicesData: invoicesData,
        doctorData: doctorData.toModel(),
        admissionTypeColor: admissionTypeColor,
      );
}

extension AdmissionDtoListMappers on List<AdmissionDto> {
  List<Admission> toModels() {
    return map((admissionDto) => admissionDto.toModel()).toList();
  }
}
