import 'package:vetmanager_internship_app/src/feature/admission/model/admission.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/admissions_list.dart';

abstract interface class LocalAdmissionDataSource {
  AdmissionsList fetchAdmissionsList();

  void cacheAdmissionsList(AdmissionsList admissionsList);

  Admission? fetchAdmission(int id);

  void cacheAdmission(Admission admission);
}
