import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vetmanager_internship_app/src/core/di/injectable/injectable.dart';
import 'package:vetmanager_internship_app/src/feature/admission/logic/admission/admission_cubit.dart';
import 'package:vetmanager_internship_app/src/feature/admission/widget/admission_view.dart';

/// {@template admission_screen}
/// AdmissionScreen widget.
/// {@endtemplate}
class AdmissionScreen extends StatelessWidget {
  /// {@macro admission_screen}
  const AdmissionScreen({
    super.key,
    required this.id,
  });

  final String? id;

  @override
  Widget build(BuildContext context) {
    if (id == null) {
      /// TODO: add error screen
      return Placeholder();
    }
    return BlocProvider(
      create: (context) =>
          getIt<AdmissionCubit>()..fetchAdmission(int.parse(id!)),
      child: AdmissionView(id: id!),
    );
  }
}
