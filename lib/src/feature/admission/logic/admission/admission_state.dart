part of 'admission_cubit.dart';

@freezed
sealed class AdmissionState with _$AdmissionState {
  const factory AdmissionState({
    Admission? admission,
    @Default(false) bool isLoading,
    AppException? error,
  }) = _AdmissionState;
}
