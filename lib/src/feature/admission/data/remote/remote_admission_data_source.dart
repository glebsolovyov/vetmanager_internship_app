import 'package:vetmanager_internship_app/src/feature/admission/model/admission.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/admissions_list.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/fetch_admissions_list_query.dart';

abstract interface class RemoteAdmissionDataSource {
  Future<AdmissionsList> fetchAdmissions(FetchAdmissionsQuery query);

  Future<Admission> fetchAdmission(int id);
}
