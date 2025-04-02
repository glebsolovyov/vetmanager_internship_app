import 'package:injectable/injectable.dart';
import 'package:vetmanager_internship_app/src/feature/admission/data/admission_data_source.dart';
import 'package:vetmanager_internship_app/src/feature/admission/data/admission_repository.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/admission.dart';

@Injectable(as: AdmissionRepository)
class AdmissionRepositoryImpl implements AdmissionRepository {
  AdmissionRepositoryImpl(AdmissionDataSource admissionDataSource)
      : _admissionDataSource = admissionDataSource;

  final AdmissionDataSource _admissionDataSource;

  @override
  Future<List<Admission>> fetchAdmissions({
    required int id,
    required String filter,
    required String sort,
    required int pageSize,
    required int pageNumber,
    required String filterByDoctors,
    required int page,
  }) =>
      _admissionDataSource.fetchAdmissions(
        id: id,
        filter: filter,
        sort: sort,
        pageSize: pageSize,
        pageNumber: pageNumber,
        filterByDoctors: filterByDoctors,
        page: page,
      );
}
