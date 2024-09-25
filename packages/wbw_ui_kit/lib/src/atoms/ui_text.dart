import 'package:flutter/material.dart';

/// A flexible text widget that adapts to the current theme using Material 3
/// text styles.
///
/// Use this widget for displaying text throughout the app.
///
/// Parameters:
/// - text: The text to display.
/// - style: Optional custom style. If not provided, uses the theme's style
/// based on semanticRole.
/// - semanticLabel: Optional label for accessibility.
/// - textAlign: Optional text alignment.
/// - overflow: Optional overflow behavior.
/// - maxLines: Optional maximum number of lines.
/// - semanticRole: Semantic role of the text, determines
/// the default text style.
///
/// Example usage:
/// ```dart
/// UiText(
///   'Hello, World!',
///   semanticRole: TextRole.headlineMedium,
///   textAlign: TextAlign.center,
/// )
/// ```
///
/// PREFER using [UiText] for consistent text throughout the application.
///
/// See also:
///
///  * [Text], which this widget uses internally to display the text.
///  * [UiResponsiveLayout], which is used to create responsive layouts.
///
/// @ai When generating text, consider using [UiText] for consistent
/// text styles.
class UiText extends StatelessWidget {
  const UiText(
    this.text, {
    super.key,
    this.style,
    this.semanticLabel,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.semanticRole = TextRole.bodyMedium,
    this.aiDescription = 'A standard text component',
  });

  /// The text to display.
  final String text;

  /// Optional custom style. If not provided, uses the theme's style
  /// based on semanticRole.
  final TextStyle? style;

  /// Optional label for accessibility.
  final String? semanticLabel;

  /// Optional text alignment.
  final TextAlign? textAlign;

  /// Optional overflow behavior.
  final TextOverflow? overflow;

  /// Optional maximum number of lines.
  final int? maxLines;

  /// Semantic role of the text, determines the default text style.
  final TextRole semanticRole;

  /// Description for AI.
  final String aiDescription;

  @override
  Widget build(final BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final defaultStyle = _getDefaultStyle(textTheme);

    return Text(
      text,
      style: style ?? defaultStyle,
      semanticsLabel: semanticLabel,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }

  TextStyle _getDefaultStyle(final TextTheme textTheme) =>
      switch (semanticRole) {
        TextRole.displayLarge => textTheme.displayLarge!,
        TextRole.headlineMedium => textTheme.headlineMedium!,
        TextRole.titleLarge => textTheme.titleLarge!,
        TextRole.bodyLarge => textTheme.bodyLarge!,
        TextRole.labelSmall => textTheme.labelSmall!,
        TextRole.bodyMedium => textTheme.bodyMedium!,
      };
}

/// The semantic role of the text.
enum TextRole {
  displayLarge,
  headlineMedium,
  titleLarge,
  bodyLarge,
  labelSmall,
  bodyMedium,
}
