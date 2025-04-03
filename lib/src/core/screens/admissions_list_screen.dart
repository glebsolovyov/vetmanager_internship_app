import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vetmanager_internship_app/src/core/di/injectable/injectable.dart';
import 'package:vetmanager_internship_app/src/feature/admission/logic/admissions_list/admissions_list_cubit.dart';
import 'package:vetmanager_internship_app/src/feature/admission/widget/admissions_list_view.dart';

/// {@template admission_list_screen}
/// AdmissionListScreen widget.
/// {@endtemplate}
class AdmissionListScreen extends StatelessWidget {
  /// {@macro admission_list_screen}
  const AdmissionListScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AdmissionsListCubit>()
        ..fetchAdmissions(
          id: 1,
          filter: 'delayed',
          sort: 'desc',
          pageSize: 10,
          pageNumber: 1,
          filterByDoctors: 'my',
          page: 0,
        ),
      child: AdmissionsListView(),
    );
  }
}
