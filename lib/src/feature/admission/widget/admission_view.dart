import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/context_extension.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/datetime_extensions.dart';
import 'package:vetmanager_internship_app/src/core/utils/widget/app_container.dart';
import 'package:vetmanager_internship_app/src/core/utils/widget/default_app_bar.dart';
import 'package:vetmanager_internship_app/src/feature/admission/logic/admission/admission_cubit.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/client.dart';
import 'package:vetmanager_internship_app/src/feature/admission/widget/component/admission_view_skeleton.dart';
import 'package:vetmanager_internship_app/src/feature/admission/widget/component/info_container.dart';
import 'package:vetmanager_internship_app/src/feature/admission/widget/component/pet_card.dart';

/// {@template admission_view}
/// AdmissionView widget.
/// {@endtemplate}
class AdmissionView extends StatelessWidget {
  /// {@macro admission_view}
  const AdmissionView({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<AdmissionCubit, AdmissionState>(
        builder: (context, state) {
          final admission = state.admission;

          return Scaffold(
            appBar: DefaultAppBar(title: 'Прием №$id', needBackButton: true),
            body: Builder(
              builder: (context) {
                if (state.isLoading || state.admission == null) {
                  return AdmissionViewSkeleton();
                }
                final doctor = admission!.doctorData;
                final client = admission.clientData;
                final pet = admission.petData;

                return ListView(
                  children: [
                    if (pet != null) ...[
                      PetCard(pet: state.admission!.petData!),
                      SizedBox(height: 8),
                    ],
                    AppContainer(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Детали приема',
                            style: context.textStyles.bodyLarge,
                          ),
                          SizedBox(height: 12),
                          InfoContainer(
                            title: 'Дата приема:',
                            subTitle: admission.admissionDate.ddMMyyHHmm,
                            needMaxFinitWidth: true,
                          ),
                          SizedBox(height: 8),
                          if (doctor != null) ...[
                            InfoContainer(
                              title: 'Имя доктора:',
                              subTitle: doctor.firstName,
                              needMaxFinitWidth: true,
                            ),
                            SizedBox(height: 8),
                          ],
                          if (client != null)
                            InfoContainer(
                              title: 'Имя клиента:',
                              subTitle: client.fullName,
                              needMaxFinitWidth: true,
                            ),
                          SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        },
      );
}
