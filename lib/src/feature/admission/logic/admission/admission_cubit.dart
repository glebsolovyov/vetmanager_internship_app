import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logging/logging.dart';
import 'package:vetmanager_internship_app/src/core/utils/cubit/base_cubit.dart';
import 'package:vetmanager_internship_app/src/core/utils/exception/base_exception.dart';
import 'package:vetmanager_internship_app/src/feature/admission/data/admission_repository.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/admission.dart';

part 'admission_cubit.freezed.dart';

part 'admission_state.dart';

@injectable
class AdmissionCubit extends BaseCubit<AdmissionState> {
  AdmissionCubit(AdmissionRepository admissionRepostory)
      : _admissionRepository = admissionRepostory,
        _logger = Logger('AdmissionState'),
        super(const AdmissionState());

  final AdmissionRepository _admissionRepository;
  late final Logger _logger;

  Future<void> fetchAdmission(int id) async {
    _logger.info('Trace: fetchAdmission');
    safeEmit(
      onStart: () => state.copyWith(isLoading: true),
      callback: () async {
        final result = await _admissionRepository.fetchAdmission(id);
        return state.copyWith(admission: result);
      },
      onError: (e) => state.copyWith(error: e),
    );
  }
}
