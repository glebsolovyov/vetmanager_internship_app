import 'package:vetmanager_internship_app/src/core/local_db/model/admission_realm.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/string_extension.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/pet.dart';

extension PetRealmMapper$ToRealm on Pet {
  PetRealm toRealm() => PetRealm(
        petId,
        sex.name,
        alias,
        petType,
        petTypeId,
        url.toString(),
        petBreed: petBreed,
        birthday: birthday,
      );
}

extension PetRealmMapper$ToModel on PetRealm {
  Pet toModel() => Pet(
        petId: petId,
        sex: sex.petSex,
        alias: alias,
        petType: petType,
        petBreed: petBreed,
        birthday: birthday,
        petTypeId: petTypeId,
        url: url.getUri,
      );
}
