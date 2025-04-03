import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:vetmanager_internship_app/src/core/client/rest_client.dart';
import 'package:vetmanager_internship_app/src/core/utils/exception/unexpected_exception.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/dio_exception_extension.dart';
import 'package:vetmanager_internship_app/src/core/utils/mappers/admission_mapper.dart';
import 'package:vetmanager_internship_app/src/feature/admission/data/admission_data_source.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/admission.dart';

@Injectable(as: AdmissionDataSource)
class AdmissionDataSourceImpl implements AdmissionDataSource {
  AdmissionDataSourceImpl(AppRestClient appRestClient)
      : _appRestClient = appRestClient;

  final AppRestClient _appRestClient;

  @override
  Future<List<Admission>> fetchAdmissions({
    required int id,
    required String filter,
    required String sort,
    required int pageSize,
    required int pageNumber,
    required String filterByDoctors,
    required int page,
  }) async {
    try {
      final result = await _appRestClient.fetchAdmissions(
          1, 'delayed', 'desc', 10, 1, 'my', 0);
      return result.toModels();
    } on DioException catch (e) {
      throw e.toNetworkException();
    } catch (e, s) {
      throw UnexpectedException(message: e.toString(), stackTrace: s);
    }
  }

  @override
  Future<Admission> fetchAdmission(int id) async {
    try {
      final result = await _appRestClient.fetchAdmission(id);
      return result.toModel();
    } on DioException catch (e) {
      throw e.toNetworkException();
    } catch (e, s) {
      throw UnexpectedException(message: e.toString(), stackTrace: s);
    }
  }
}
