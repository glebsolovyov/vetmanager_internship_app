part of 'admission_list_cubit.dart';

@freezed
sealed class AdmissionsListState with _$AdmissionsListState {
  const factory AdmissionsListState({
    @Default([]) List<Admission> admissions,
    @Default(false) bool isLoading,
    AppException? error,
  }) = _AdmissionListState;
}
