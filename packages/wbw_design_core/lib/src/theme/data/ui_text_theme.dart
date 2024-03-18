part of '../theme.dart';

/// Common styles
@immutable
class UiTextTheme {
  // ignore: avoid_unused_constructor_parameters
  factory UiTextTheme(final BuildContext context) {
    final textTheme = AppThemeData.brandLight.textTheme;
    final colorScheme = AppThemeData.brandLight.colorScheme;
    final errorColor = colorScheme.error;
    return UiTextTheme._(
      error: _buildError(textTheme: textTheme, errorColor: errorColor),
    );
  }
  const UiTextTheme._({required this.error});
  final TextTheme error;
  static TextTheme _buildError({
    required final TextTheme textTheme,
    required final Color errorColor,
  }) =>
      textTheme.copyWith(
        displayLarge: textTheme.displayLarge?.copyWith(
          color: errorColor,
        ),
        displayMedium: textTheme.displayMedium?.copyWith(
          color: errorColor,
        ),
        displaySmall: textTheme.displaySmall?.copyWith(
          color: errorColor,
        ),
        headlineLarge: textTheme.headlineLarge?.copyWith(
          color: errorColor,
        ),
        headlineMedium: textTheme.headlineMedium?.copyWith(
          color: errorColor,
        ),
        headlineSmall: textTheme.headlineSmall?.copyWith(
          color: errorColor,
        ),
        labelLarge: textTheme.labelLarge?.copyWith(
          color: errorColor,
        ),
        labelMedium: textTheme.labelMedium?.copyWith(
          color: errorColor,
        ),
        labelSmall: textTheme.labelSmall?.copyWith(
          color: errorColor,
        ),
        titleLarge: textTheme.titleLarge?.copyWith(
          color: errorColor,
        ),
        titleMedium: textTheme.titleMedium?.copyWith(
          color: errorColor,
        ),
        titleSmall: textTheme.titleSmall?.copyWith(
          color: errorColor,
        ),
        bodyLarge: textTheme.bodyLarge?.copyWith(
          color: errorColor,
        ),
        bodyMedium: textTheme.bodyMedium?.copyWith(
          color: errorColor,
        ),
        bodySmall: textTheme.bodySmall?.copyWith(
          color: errorColor,
        ),
      );
}
