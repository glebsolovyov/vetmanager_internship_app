// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admission_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdmissionState {
  Admission? get admission;
  bool get isLoading;
  AppException? get error;

  /// Create a copy of AdmissionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdmissionStateCopyWith<AdmissionState> get copyWith =>
      _$AdmissionStateCopyWithImpl<AdmissionState>(
          this as AdmissionState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdmissionState &&
            (identical(other.admission, admission) ||
                other.admission == admission) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, admission, isLoading, error);

  @override
  String toString() {
    return 'AdmissionState(admission: $admission, isLoading: $isLoading, error: $error)';
  }
}

/// @nodoc
abstract mixin class $AdmissionStateCopyWith<$Res> {
  factory $AdmissionStateCopyWith(
          AdmissionState value, $Res Function(AdmissionState) _then) =
      _$AdmissionStateCopyWithImpl;
  @useResult
  $Res call({Admission? admission, bool isLoading, AppException? error});
}

/// @nodoc
class _$AdmissionStateCopyWithImpl<$Res>
    implements $AdmissionStateCopyWith<$Res> {
  _$AdmissionStateCopyWithImpl(this._self, this._then);

  final AdmissionState _self;
  final $Res Function(AdmissionState) _then;

  /// Create a copy of AdmissionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admission = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      admission: freezed == admission
          ? _self.admission
          : admission // ignore: cast_nullable_to_non_nullable
              as Admission?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException?,
    ));
  }
}

/// @nodoc

class _AdmissionState implements AdmissionState {
  const _AdmissionState({this.admission, this.isLoading = false, this.error});

  @override
  final Admission? admission;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final AppException? error;

  /// Create a copy of AdmissionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdmissionStateCopyWith<_AdmissionState> get copyWith =>
      __$AdmissionStateCopyWithImpl<_AdmissionState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdmissionState &&
            (identical(other.admission, admission) ||
                other.admission == admission) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, admission, isLoading, error);

  @override
  String toString() {
    return 'AdmissionState(admission: $admission, isLoading: $isLoading, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$AdmissionStateCopyWith<$Res>
    implements $AdmissionStateCopyWith<$Res> {
  factory _$AdmissionStateCopyWith(
          _AdmissionState value, $Res Function(_AdmissionState) _then) =
      __$AdmissionStateCopyWithImpl;
  @override
  @useResult
  $Res call({Admission? admission, bool isLoading, AppException? error});
}

/// @nodoc
class __$AdmissionStateCopyWithImpl<$Res>
    implements _$AdmissionStateCopyWith<$Res> {
  __$AdmissionStateCopyWithImpl(this._self, this._then);

  final _AdmissionState _self;
  final $Res Function(_AdmissionState) _then;

  /// Create a copy of AdmissionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? admission = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_AdmissionState(
      admission: freezed == admission
          ? _self.admission
          : admission // ignore: cast_nullable_to_non_nullable
              as Admission?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppException?,
    ));
  }
}

// dart format on
