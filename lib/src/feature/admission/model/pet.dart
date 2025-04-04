import 'package:vetmanager_internship_app/src/feature/admission/utils/enum/pet_sex.dart';

class Pet {
  Pet({
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
  final PetSex sex;
  final String alias;
  final String petType;
  final String? petBreed;
  final String? birthday;
  final String petTypeId;
  final Uri url;
}
