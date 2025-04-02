import 'package:json_annotation/json_annotation.dart';

part 'pet_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, createToJson: false)
class PetDto {
  PetDto({
    required this.petId,
    required this.sex,
    required this.alias,
    required this.petType,
    required this.petBreed,
    required this.birthday,
    required this.petTypeId,
    required this.url,
  });

  final String petId;
  final String sex;
  final String alias;
  final String petType;
  final String? petBreed;
  final String? birthday;
  final String petTypeId;
  final Uri url;

  factory PetDto.fromJson(Map<String, Object?> json) => _$PetDtoFromJson(json);
}
