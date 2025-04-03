import 'package:vetmanager_internship_app/src/feature/admission/model/admission.dart';

abstract interface class AdmissionDataSource {
  Future<List<Admission>> fetchAdmissions({
    required int id,
    required String filter,
    required String sort,
    required int pageSize,
    required int pageNumber,
    required String filterByDoctors,
    required int page,
  });

  Future<Admission> fetchAdmission(int id);
}
