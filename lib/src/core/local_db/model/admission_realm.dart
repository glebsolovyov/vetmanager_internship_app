import 'package:realm/realm.dart';

part 'admission_realm.realm.dart';

part 'client_realm.dart';
part 'pet_realm.dart';
part 'doctor_realm.dart';

@RealmModel()
class _AdmissionRealm {
  @PrimaryKey()
  late String id;
  late DateTime admissionDate;
  late String clientId;
  late String patientId;
  late String typeId;
  late String admissionLength;
  late String status;
  late String clinicId;
  late String directDirection;
  late String creatorId;
  late DateTime createDate;
  late String receptionWriteChannel;
  late String iconReceptionWriteChannel;
  List<String> invoicesData = [];
  _PetRealm? petData;
  _ClientRealm? clientData;
  String? escroterId;
  String? waitTime;
  _DoctorRealm? doctorData;
  String? admissionTypeColor;
}
