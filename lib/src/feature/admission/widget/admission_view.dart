import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vetmanager_internship_app/src/feature/admission/logic/admission/admission_cubit.dart';

/// {@template admission_view}
/// AdmissionView widget.
/// {@endtemplate}
class AdmissionView extends StatelessWidget {
  /// {@macro admission_view}
  const AdmissionView({
    super.key, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<AdmissionCubit, AdmissionState>(
        builder: (context, state) => Scaffold(
          body: Center(
            child: Text(state.admission?.id ?? 'no element'),
          ),
        ),
      );
}
