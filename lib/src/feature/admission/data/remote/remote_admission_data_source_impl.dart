import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:vetmanager_internship_app/src/core/client/rest_client.dart';
import 'package:vetmanager_internship_app/src/core/utils/exception/unexpected_exception.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/dio_exception_extension.dart';
import 'package:vetmanager_internship_app/src/core/utils/mappers/dto/admission_mapper.dart';
import 'package:vetmanager_internship_app/src/feature/admission/data/remote/remote_admission_data_source.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/admission.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/admissions_list.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/fetch_admissions_list_query.dart';

@Injectable(as: RemoteAdmissionDataSource)
class AdmissionDataSourceImpl implements RemoteAdmissionDataSource {
  AdmissionDataSourceImpl(AppRestClient appRestClient)
      : _appRestClient = appRestClient;

  final AppRestClient _appRestClient;

  @override
  Future<AdmissionsList> fetchAdmissions(FetchAdmissionsQuery query) async {
    try {
      final result = await _appRestClient.fetchAdmissions(
          1, 'delayed', 'desc', 10, 1, 'my', 0);
      return AdmissionsList(result.toModels());
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
