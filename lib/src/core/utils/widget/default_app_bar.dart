import 'package:flutter/material.dart';
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
  });

  final String title;
  final bool needBackButton;

  @override
  Widget build(BuildContext context) {
    final appColors = Theme.of(context).colorScheme;
    final appTextStyles = Theme.of(context).textTheme;

    return AppBar(
      title: Text(
        title,
        style: appTextStyles.titleMedium.withColor(appColors.onPrimary),
      ),
      leading: needBackButton
          ? IconButton(
              icon: Icon(Icons.chevron_left),
              color: appColors.onPrimary,
              iconSize: 32,
              onPressed: () => Navigator.pop(context),
            )
          : SizedBox.shrink(),
      backgroundColor: appColors.primary,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
