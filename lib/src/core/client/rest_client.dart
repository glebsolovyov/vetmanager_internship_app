import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:vetmanager_internship_app/src/feature/admission/data/dto/admission_dto.dart';

part 'rest_client.g.dart';

@RestApi()
abstract class AppRestClient {
  factory AppRestClient(Dio dio, {String baseUrl}) = _AppRestClient;

  @GET('/users/1/admission')
  Future<List<AdmissionDto>> fetchAdmissions(
    @Query('clinic_id') int id,
    @Query('filter[status]') String filter,
    @Query('sort[direction]') String sort,
    @Query('page[size]') int pageSize,
    @Query('page[number]') int pageNumber,
    @Query('filter[filter_by_doctors]') String filterByDoctors,
    @Query('page[no_paging]') int page,
  );

  @GET('/users/admission/{id}')
  Future<AdmissionDto> fetchAdmission(
    @Path('id') int id,
  );
}
