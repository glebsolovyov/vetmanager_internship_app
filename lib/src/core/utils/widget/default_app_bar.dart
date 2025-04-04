import 'package:flutter/material.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/context_extension.dart';
import 'package:vetmanager_internship_app/src/core/utils/extensions/text_style_extension.dart';

/// {@template default_app_bar}
/// DefaultAppBar widget.
/// {@endtemplate}
class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// {@macro default_app_bar}
  const DefaultAppBar({
    super.key,
    required this.title,
    this.needBackButton = false,
    this.centerTitle = false,
  });

  final String title;
  final bool needBackButton;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style:
            context.textStyles.titleMedium.withColor(context.colors.onPrimary),
      ),
      leading: needBackButton
          ? IconButton(
              icon: Icon(Icons.chevron_left),
              color: context.colors.onPrimary,
              iconSize: 32,
              onPressed: () => Navigator.pop(context),
            )
          : SizedBox.shrink(),
      centerTitle: centerTitle,
      titleSpacing: 0,
      backgroundColor: context.colors.primary,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
