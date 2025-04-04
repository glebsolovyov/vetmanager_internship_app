part of 'admission_realm.dart';

@RealmModel()
class _ClientRealm {
  late String clientId;
  late String firstName;
  late String lastName;
  late String cellPhone;
  late String inBlacklist;
  late String cellPhoneClean;

  String? middleName;
  String? email;
  String? address;
  String? clientType;
  String? phonePrefix;
}
