import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:vetmanager_internship_app/src/core/utils/cubit/base_cubit.dart';
import 'package:vetmanager_internship_app/src/core/utils/exception/base_exception.dart';
import 'package:vetmanager_internship_app/src/feature/admission/data/admission_repository.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/admission.dart';

part 'admissions_list_cubit.freezed.dart';

part 'admissions_list_state.dart';

@injectable
class AdmissionsListCubit extends BaseCubit<AdmissionsListState> {
  AdmissionsListCubit(AdmissionRepository admissionRepostory)
      : _admissionRepository = admissionRepostory,
        _logger = Logger('AdmissionsListCubit'),
        super(const AdmissionsListState());

  final AdmissionRepository _admissionRepository;
  late final Logger _logger;

  Future<void> fetchAdmissions({
    required int id,
    required String filter,
    required String sort,
    required int pageSize,
    required int pageNumber,
    required String filterByDoctors,
    required int page,
  }) async {
    _logger.info('Trace: fetchAdmissions');
    safeEmit(
      onStart: () => state.copyWith(isLoading: true),
      callback: () async {
        final result = await _admissionRepository.fetchAdmissions(
          id: id,
          filter: filter,
          sort: sort,
          pageSize: pageSize,
          pageNumber: pageNumber,
          filterByDoctors: filterByDoctors,
          page: page,
        );
        return state.copyWith(admissions: result);
      },
      onError: (e) => state.copyWith(error: e),
    );
  }
}
