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
  final String sex;
  final String alias;
  final String petType;
  final String? petBreed;
  final String? birthday;
  final String petTypeId;
  final Uri url;
}
