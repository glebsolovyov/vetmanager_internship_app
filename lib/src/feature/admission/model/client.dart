import 'package:equatable/equatable.dart';

class Client extends Equatable {
  const Client({
    required this.clientId,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.email,
    required this.cellPhone,
    required this.address,
    required this.inBlacklist,
    required this.clientType,
    required this.phonePrefix,
    required this.cellPhoneClean,
  });

  final String clientId;
  final String firstName;
  final String? middleName;
  final String lastName;
  final String? email;
  final String cellPhone;
  final String? address;
  final String inBlacklist;
  final String? clientType;
  final String? phonePrefix;
  final String cellPhoneClean;

  @override
  List<Object?> get props => [
        clientId,
        firstName,
        middleName,
        lastName,
        email,
        cellPhone,
        address,
        inBlacklist,
        clientType,
        phonePrefix,
        cellPhoneClean,
      ];
}

extension ClientExtension on Client {
  String get fullName {
    if (middleName != null) {
      return '$firstName $middleName $lastName';
    }
    return '$firstName $lastName';
  }
}
