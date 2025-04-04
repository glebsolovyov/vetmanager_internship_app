import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/admission.dart';

/// {@template admissions_list}
/// AdmissionsList entity
/// {@endtemplate}
@immutable
class AdmissionsList extends Equatable {
  /// {@macro admissions_list}
  const AdmissionsList(this.admissions);

  final List<Admission> admissions;

  @override
  List<Object?> get props => [admissions];
}
