class Doctor {
  Doctor({
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
}

extension DoctorExtension on Doctor {
  String get fullName {
    if (middleName != null) {
      return '$firstName $middleName $lastName';
    }
    return '$firstName $lastName';
  }
}
