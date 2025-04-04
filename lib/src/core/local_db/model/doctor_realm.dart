part of 'admission_realm.dart';

@RealmModel()
class _DoctorRealm {
  late String doctorId;
  late String lastName;
  late String firstName;
  String? middleName;
  String? nickName;
}
