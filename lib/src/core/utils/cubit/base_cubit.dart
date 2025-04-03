import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:vetmanager_internship_app/src/core/utils/exception/base_exception.dart';
import 'package:vetmanager_internship_app/src/core/utils/exception/unexpected_exception.dart';

abstract class BaseCubit<T> extends Cubit<T> {
  BaseCubit(super.initialState) : _logger = Logger(T.toString());

  late final Logger _logger;

  Future<void> safeEmit({
    T Function()? onStart,
    required Future<T> Function() callback,
    required T Function(AppException e) onError,
  }) async {
    if (onStart != null) {
      emit(onStart());
    }
    try {
      final newState = await callback();
      emit(newState);
      _logger.info('New state emitted');
    } on AppException catch (e, s) {
      emit(onError(e));
      _logger.severe('AppException', e, s);
    } catch (e, s) {
      emit(
        onError(UnexpectedException(stackTrace: s, message: e.toString())),
      );
      _logger.severe('UnexpectedException', e, s);
    }
  }
}
