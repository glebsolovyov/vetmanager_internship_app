import 'package:flutter/material.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/datetime_extensions.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/admission.dart';
import 'package:vetmanager_internship_app/src/feature/admission/utils/enum/admission_status.dart';

/// {@template admission_list_tile}
/// AdmissionListTile widget.
/// {@endtemplate}
class AdmissionListTile extends StatelessWidget {
  /// {@macro admission_list_tile}
  const AdmissionListTile({
    super.key,
    required this.admission,
    required this.onTap,
  });

  final Admission admission;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).colorScheme;
    final appTextStyles = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: appColors.onPrimary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _StatusWidget(title: admission.status.title),
                Spacer(),
                Text(
                  admission.admissionDate.ddMMyyHHmm,
                  style: appTextStyles.bodyMedium,
                )
              ],
            ),
            SizedBox(height: 8),
            Text(
              admission.petData.alias,
              style: appTextStyles.bodyMedium,
            ),
            SizedBox(height: 8),
            if (admission.doctorData != null)
              Text(
                '${admission.doctorData!.firstName} ${admission.doctorData!.lastName}',
                style: appTextStyles.bodyMedium,
              ),
          ],
        ),
      ),
    );
  }
}

/// {@template admission_list_tile}
/// _StatusWidget widget.
/// {@endtemplate}
class _StatusWidget extends StatelessWidget {
  /// {@macro admission_list_tile}
  const _StatusWidget({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).colorScheme;
    final appTextStyles = Theme.of(context).textTheme;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: appColors.secondary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        title,
        style: appTextStyles.bodyMedium,
      ),
    );
  }
}
