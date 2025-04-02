// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PetDto _$PetDtoFromJson(Map<String, dynamic> json) => PetDto(
      petId: json['pet_id'] as String,
      sex: json['sex'] as String,
      alias: json['alias'] as String,
      petType: json['pet_type'] as String,
      petBreed: json['pet_breed'] as String?,
      birthday: json['birthday'] as String?,
      petTypeId: json['pet_type_id'] as String,
      url: Uri.parse(json['url'] as String),
    );
