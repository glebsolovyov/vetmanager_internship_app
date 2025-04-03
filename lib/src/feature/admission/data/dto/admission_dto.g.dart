// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admission_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdmissionDto _$AdmissionDtoFromJson(Map<String, dynamic> json) => AdmissionDto(
      id: json['id'] as String,
      admissionDate: DateTime.parse(json['admission_date'] as String),
      clientId: json['client_id'] as String,
      patientId: json['patient_id'] as String,
      typeId: json['type_id'] as String,
      admissionLength: json['admission_length'] as String,
      status: $enumDecode(_$AdmissionStatusEnumMap, json['status']),
      clinicId: json['clinic_id'] as String,
      directDirection: json['direct_direction'] as String,
      creatorId: json['creator_id'] as String,
      createDate: DateTime.parse(json['create_date'] as String),
      escroterId: json['escroter_id'] as String?,
      receptionWriteChannel: json['reception_write_channel'] as String,
      iconReceptionWriteChannel: json['icon_reception_write_channel'] as String,
      waitTime: json['wait_time'] as String?,
      petData: PetDto.fromJson(json['pet_data'] as Map<String, dynamic>),
      clientData:
          ClientDto.fromJson(json['client_data'] as Map<String, dynamic>),
      invoicesData: json['invoices_data'] as List<dynamic>?,
      doctorData: json['doctor_data'] == null
          ? null
          : DoctorDto.fromJson(json['doctor_data'] as Map<String, dynamic>),
      admissionTypeColor: json['admission_type_color'] as String?,
    );

const _$AdmissionStatusEnumMap = {
  AdmissionStatus.pending: 'pending',
  AdmissionStatus.completed: 'completed',
  AdmissionStatus.canceled: 'canceled',
  AdmissionStatus.delayed: 'delayed',
};
