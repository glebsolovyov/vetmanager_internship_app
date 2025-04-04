import 'package:vetmanager_internship_app/src/feature/admission/data/dto/pet_dto.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/pet.dart';

extension PetDtoMapper on PetDto {
  Pet toModel() => Pet(
        petId: petId,
        sex: sex,
        alias: alias,
        petType: petType,
        petBreed: petBreed,
        birthday: birthday,
        petTypeId: petTypeId,
        url: url,
      );
}
