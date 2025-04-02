// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClientDto _$ClientDtoFromJson(Map<String, dynamic> json) => ClientDto(
      clientId: json['client_id'] as String,
      firstName: json['first_name'] as String,
      middleName: json['middle_name'] as String?,
      lastName: json['last_name'] as String,
      email: json['email'] as String?,
      cellPhone: json['cell_phone'] as String,
      address: json['address'] as String?,
      inBlacklist: json['in_blacklist'] as String,
      clientType: json['client_type'] as String?,
      phonePrefix: json['phone_prefix'] as String?,
      cellPhoneClean: json['cell_phone_clean'] as String,
    );
