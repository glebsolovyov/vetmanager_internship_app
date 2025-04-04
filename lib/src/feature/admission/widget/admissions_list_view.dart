import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vetmanager_internship_app/src/core/router/router.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/context_extension.dart';

import 'package:vetmanager_internship_app/src/core/utils/widget/default_app_bar.dart';
import 'package:vetmanager_internship_app/src/feature/admission/logic/admissions_list/admissions_list_cubit.dart';
import 'package:vetmanager_internship_app/src/feature/admission/widget/component/admission_list_tile.dart';
import 'package:vetmanager_internship_app/src/feature/admission/widget/component/admissions_list_view_skeleton.dart';

/// {@template admissions_list_view}
/// AdmissionsListView widget.
/// {@endtemplate}
class AdmissionsListView extends StatelessWidget {
  /// {@macro admissions_list_view}
  const AdmissionsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Приемы',
        needBackButton: true,
      ),
      body: BlocBuilder<AdmissionsListCubit, AdmissionsListState>(
          builder: (context, state) {
        if (state.isLoading) {
          return AdmissionsListSkeleton();
        }
        return ListView(
          children: state.admissions
              .map(
                (e) => AdmissionListTile(
                  admission: e,
                  onTap: () => context.router.push(
                    AppRoute(path: '/admission', arguments: {'id': e.id}),
                  ),
                ),
              )
              .toList(),
        );
      }),
    );
  }
}
