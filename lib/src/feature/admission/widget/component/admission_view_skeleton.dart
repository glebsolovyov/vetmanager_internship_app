import 'package:flutter/material.dart';
import 'package:vetmanager_internship_app/src/core/utils/widget/shimmer.dart';

/// {@template admission_view_skeleton}
/// AdmissionViewSkeleton widget.
/// {@endtemplate}
class AdmissionViewSkeleton extends StatelessWidget {
  /// {@macro admission_view_skeleton}
  const AdmissionViewSkeleton({
    super.key, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            Shimmer(size: Size(double.infinity, 150)),
            SizedBox(height: 8),
            Shimmer(size: Size(double.infinity, 190)),
          ],
        ),
      );
}
