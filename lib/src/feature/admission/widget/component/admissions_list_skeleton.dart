import 'package:flutter/material.dart';
import 'package:vetmanager_internship_app/src/core/utils/widget/shimmer.dart';

/// {@template admissions_list_skeleton}
/// AdmissionsListSkeleton widget.
/// {@endtemplate}
class AdmissionsListSkeleton extends StatelessWidget {
  /// {@macro admissions_list_skeleton}
  const AdmissionsListSkeleton({
    super.key, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) => ListView(
        children: [
          for (int i = 0; i <= 10; i++)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: Shimmer(
                cornerRadius: 8,
                size: Size(double.infinity, 92),
              ),
            )
        ],
      );
}
