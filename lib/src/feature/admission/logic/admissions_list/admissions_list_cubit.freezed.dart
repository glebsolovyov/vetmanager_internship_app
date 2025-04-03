// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admissions_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdmissionsListState {
  List<Admission> get admissions;
  bool get isLoading;
  AppException? get error;

  /// Create a copy of AdmissionsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AdmissionsListStateCopyWith<AdmissionsListState> get copyWith =>
      _$AdmissionsListStateCopyWithImpl<AdmissionsListState>(
          this as AdmissionsListState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AdmissionsListState &&
            const DeepCollectionEquality()
                .equals(other.admissions, admissions) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(admissions), isLoading, error);

  @override
  String toString() {
    return 'AdmissionsListState(admissions: $admissions, isLoading: $isLoading, error: $error)';
  }
}

/// @nodoc
abstract mixin class $AdmissionsListStateCopyWith<$Res> {
  factory $AdmissionsListStateCopyWith(
          AdmissionsListState value, $Res Function(AdmissionsListState) _then) =
      _$AdmissionsListStateCopyWithImpl;
  @useResult
  $Res call({List<Admission> admissions, bool isLoading, AppException? error});
}

/// @nodoc
class _$AdmissionsListStateCopyWithImpl<$Res>
    implements $AdmissionsListStateCopyWith<$Res> {
  _$AdmissionsListStateCopyWithImpl(this._self, this._then);

  final AdmissionsListState _self;
  final $Res Function(AdmissionsListState) _then;

  /// Create a copy of AdmissionsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? admissions = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      admissions: null == admissions
          ? _self.admissions
          : admissions // ignore: cast_nullable_to_non_nullable
              as List<Admission>,
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

class _AdmissionsListState implements AdmissionsListState {
  const _AdmissionsListState(
      {final List<Admission> admissions = const [],
      this.isLoading = false,
      this.error})
      : _admissions = admissions;

  final List<Admission> _admissions;
  @override
  @JsonKey()
  List<Admission> get admissions {
    if (_admissions is EqualUnmodifiableListView) return _admissions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_admissions);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final AppException? error;

  /// Create a copy of AdmissionsListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AdmissionsListStateCopyWith<_AdmissionsListState> get copyWith =>
      __$AdmissionsListStateCopyWithImpl<_AdmissionsListState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AdmissionsListState &&
            const DeepCollectionEquality()
                .equals(other._admissions, _admissions) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_admissions), isLoading, error);

  @override
  String toString() {
    return 'AdmissionsListState(admissions: $admissions, isLoading: $isLoading, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$AdmissionsListStateCopyWith<$Res>
    implements $AdmissionsListStateCopyWith<$Res> {
  factory _$AdmissionsListStateCopyWith(_AdmissionsListState value,
          $Res Function(_AdmissionsListState) _then) =
      __$AdmissionsListStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<Admission> admissions, bool isLoading, AppException? error});
}

/// @nodoc
class __$AdmissionsListStateCopyWithImpl<$Res>
    implements _$AdmissionsListStateCopyWith<$Res> {
  __$AdmissionsListStateCopyWithImpl(this._self, this._then);

  final _AdmissionsListState _self;
  final $Res Function(_AdmissionsListState) _then;

  /// Create a copy of AdmissionsListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? admissions = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_AdmissionsListState(
      admissions: null == admissions
          ? _self._admissions
          : admissions // ignore: cast_nullable_to_non_nullable
              as List<Admission>,
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
