import 'package:json_annotation/json_annotation.dart';
import 'package:vetmanager_internship_app/src/feature/admission/data/dto/client_dto.dart';
import 'package:vetmanager_internship_app/src/feature/admission/data/dto/doctor_dto.dart';
import 'package:vetmanager_internship_app/src/feature/admission/data/dto/pet_dto.dart';

part 'admission_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, createToJson: false)
class AdmissionDto {
  AdmissionDto({
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
    required this.invoicesData,
    required this.doctorData,
    required this.admissionTypeColor,
  });

  final String id;
  final DateTime admissionDate;
  final String clientId;
  final String patientId;
  final String typeId;
  final String admissionLength;
  final String status;
  final String clinicId;
  final String directDirection;
  final String creatorId;
  final DateTime createDate;
  final String? escroterId;
  final String receptionWriteChannel;
  final String iconReceptionWriteChannel;
  final String? waitTime;
  final PetDto petData;
  final ClientDto clientData;
  final List<dynamic>? invoicesData;
  final DoctorDto? doctorData;
  final String? admissionTypeColor;

  factory AdmissionDto.fromJson(Map<String, dynamic> json) =>
      _$AdmissionDtoFromJson(json);
}
