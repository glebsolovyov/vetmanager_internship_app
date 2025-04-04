import 'package:flutter/material.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/context_extension.dart';

/// {@template info_container}
/// InfoContainer widget.
/// {@endtemplate}
class InfoContainer extends StatelessWidget {
  /// {@macro info_container}
  const InfoContainer({
    super.key,
    required this.title,
    required this.subTitle,
    this.needMaxFinitWidth = false,
  });

  final String title;
  final String subTitle;
  final bool needMaxFinitWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: needMaxFinitWidth ? double.maxFinite : null,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: context.colors.secondaryContainer,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.textStyles.bodyLarge,
          ),
          Text(
            subTitle,
            style: context.textStyles.bodyMedium,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
