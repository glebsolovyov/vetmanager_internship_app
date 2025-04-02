import 'package:json_annotation/json_annotation.dart';

part 'doctor_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, createToJson: false)
class DoctorDto {
  DoctorDto({
    required this.doctorId,
    required this.lastName,
    required this.firstName,
    required this.middleName,
    required this.nickName,
  });

  final String doctorId;
  final String lastName;
  final String firstName;
  final String? middleName;
  final String? nickName;

  factory DoctorDto.fromJson(Map<String, Object?> json) =>
      _$DoctorDtoFromJson(json);
}
