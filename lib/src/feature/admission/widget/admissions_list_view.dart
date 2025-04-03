import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vetmanager_internship_app/src/core/router/router.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/context_extension.dart';
import 'package:vetmanager_internship_app/src/feature/admission/logic/admissions_list/admissions_list_cubit.dart';

/// {@template admissions_list_view}
/// AdmissionsListView widget.
/// {@endtemplate}
class AdmissionsListView extends StatelessWidget {
  /// {@macro admissions_list_view}
  const AdmissionsListView({
    super.key, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AdmissionsListCubit, AdmissionsListState>(
        builder: (context, state) => ListView(
          children: state.admissions
              .map(
                (e) => ListTile(
                  onTap: () => context.router.push(
                    AppRoute(
                      path: '/admission',
                      arguments: {'id': e.id},
                    ),
                  ),
                  title: Text(
                    e.clientId.toString(),
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
