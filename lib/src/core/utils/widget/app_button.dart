import 'package:flutter/material.dart';

/// A button widget with a custom style.
class AppButton extends StatelessWidget {
  /// Creates a button widget.
  const AppButton({
    super.key,
    this.onPressed,
    this.isLoading = false,
    this.isDisabled = false,
    this.child,
    this.leading,
    this.trailing,
    this.width = double.infinity,
  });

  /// Whether the button is currently loading.
  final bool isLoading;

  /// Whether the button is currently disabled.
  final bool isDisabled;

  /// The button's child Widget.
  final Widget? child;

  /// The button's leading Widget.
  final Widget? leading;

  /// The button's trailing Widget.
  final Widget? trailing;

  /// Callback when the button is tapped.
  final VoidCallback? onPressed;

  /// Width of the button.
  final double? width;

  @override
  Widget build(BuildContext context) {
    Widget? content = child;

    if (leading != null || trailing != null) {
      content = Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        spacing: 8,
        children: [
          if (leading != null) leading!,
          if (content != null) content,
          if (trailing != null) trailing!,
        ],
      );
    }

    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: width),
      child: TextButton(
        style: _buildButtonStyle(context),
        onPressed: isDisabled || isLoading ? null : onPressed,
        child: content ?? const SizedBox(),
      ),
    );
  }

  ButtonStyle _buildButtonStyle(BuildContext context) {
    final appColors = Theme.of(context).colorScheme;

    return ButtonStyle(
      backgroundColor: WidgetStatePropertyAll(appColors.primary),
      foregroundColor: WidgetStatePropertyAll(appColors.onPrimary),
      textStyle: WidgetStatePropertyAll(
        Theme.of(context).textTheme.bodyMedium,
      ),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      padding: const WidgetStatePropertyAll(EdgeInsets.zero),
      minimumSize: const WidgetStatePropertyAll(Size.zero),
      fixedSize: WidgetStatePropertyAll(Size.fromHeight(40)),
    );
  }
}
