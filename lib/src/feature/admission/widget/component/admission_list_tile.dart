import 'package:flutter/material.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/context_extension.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/datetime_extensions.dart';
import 'package:vetmanager_internship_app/src/core/utils/widget/app_container.dart';
import 'package:vetmanager_internship_app/src/feature/admission/model/admission.dart';
import 'package:vetmanager_internship_app/src/feature/admission/utils/enum/admission_status.dart';

/// {@template admission_list_tile}
/// AdmissionListTile widget.
/// {@endtemplate}
class AdmissionListTile extends StatefulWidget {
  /// {@macro admission_list_tile}
  const AdmissionListTile({
    super.key,
    required this.admission,
    required this.onTap,
  });

  final Admission admission;
  final VoidCallback onTap;

  @override
  State<AdmissionListTile> createState() => _AdmissionListTileState();
}

class _AdmissionListTileState extends State<AdmissionListTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _controller.forward(),
      onTapUp: (_) async {
        await Future.delayed(Duration(milliseconds: 200), widget.onTap);
        _controller.reverse();
      },
      onTapCancel: _controller.reverse,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: AppContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  _StatusWidget(title: widget.admission.status.title),
                  Spacer(),
                  Text(
                    widget.admission.admissionDate.ddMMyyHHmm,
                    style: context.textStyles.bodyMedium,
                  )
                ],
              ),
              SizedBox(height: 8),
              Text(
                widget.admission.petData.alias,
                style: context.textStyles.bodyMedium,
              ),
              SizedBox(height: 8),
              if (widget.admission.doctorData != null)
                Text(
                  '${widget.admission.doctorData!.firstName} ${widget.admission.doctorData!.lastName}',
                  style: context.textStyles.bodyMedium,
                ),
            ],
          ),
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        color: context.colors.secondary,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        title,
        style: context.textStyles.bodyMedium,
      ),
    );
  }
}
