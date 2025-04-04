enum PetSex {
  male,
  female,
  unknown,
}

extension PetSexExtension on PetSex {
  String get title {
    switch (this) {
      case PetSex.male:
        return 'Мужской';
      case PetSex.female:
        return 'Женский';
      case PetSex.unknown:
        return 'Неизвестен';
    }
  }
}
