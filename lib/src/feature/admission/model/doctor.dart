import 'package:equatable/equatable.dart';

class Doctor extends Equatable {
  const Doctor({
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

  @override
  List<Object?> get props => [
        doctorId,
        lastName,
        firstName,
        middleName,
        nickName,
      ];
}

extension DoctorExtension on Doctor {
  String get fullName {
    if (middleName != null) {
      return '$firstName $middleName $lastName';
    }
    return '$firstName $lastName';
  }
}
