import 'package:json_annotation/json_annotation.dart';

part 'client_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, createToJson: false)
class ClientDto {
  ClientDto({
    required this.clientId,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.email,
    required this.cellPhone,
    required this.address,
    required this.inBlacklist,
    required this.clientType,
    required this.phonePrefix,
    required this.cellPhoneClean,
  });

  final String clientId;
  final String firstName;
  final String? middleName;
  final String lastName;
  final String? email;
  final String cellPhone;
  final String? address;
  final String inBlacklist;
  final String? clientType;
  final String? phonePrefix;
  final String cellPhoneClean;

  factory ClientDto.fromJson(Map<String, Object?> json) =>
      _$ClientDtoFromJson(json);
}
