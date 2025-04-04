import 'package:equatable/equatable.dart';

import 'package:vetmanager_internship_app/src/feature/admission/model/client.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/doctor.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/pet.dart';
import 'package:vetmanager_internship_app/src/feature/admission/utils/enum/admission_status.dart';

class Admission extends Equatable {
  const Admission({
    required this.id,
    required this.admissionDate,
    required this.clientId,
    required this.patientId,
    required this.typeId,
    required this.admissionLength,
    required this.status,
    required this.clinicId,
    required this.directDirection,
    required this.creatorId,
    required this.createDate,
    required this.escroterId,
    required this.receptionWriteChannel,
    required this.iconReceptionWriteChannel,
    required this.waitTime,
    required this.petData,
    required this.clientData,
    this.invoicesData = const [],
    required this.doctorData,
    required this.admissionTypeColor,
  });

  final String id;
  final DateTime admissionDate;
  final String clientId;
  final String patientId;
  final String typeId;
  final String admissionLength;
  final AdmissionStatus status;
  final String clinicId;
  final String directDirection;
  final String creatorId;
  final DateTime createDate;
  final String? escroterId;
  final String receptionWriteChannel;
  final String iconReceptionWriteChannel;
  final String? waitTime;
  final Pet? petData;
  final Client? clientData;
  final List<String> invoicesData;
  final Doctor? doctorData;
  final String? admissionTypeColor;

  @override
  List<Object?> get props => [
        id,
        admissionDate,
        clientId,
        patientId,
        typeId,
        admissionLength,
        status,
        clinicId,
        directDirection,
        creatorId,
        createDate,
        escroterId,
        receptionWriteChannel,
        iconReceptionWriteChannel,
        waitTime,
        petData,
        clientData,
        invoicesData,
        doctorData,
        admissionTypeColor
      ];
}
