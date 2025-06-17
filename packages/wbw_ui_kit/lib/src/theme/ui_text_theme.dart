part of 'theme.dart';

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
      bold: _buildBold(textTheme: textTheme),
    );
  }
  const UiTextTheme._({required this.error, required this.bold});
  final TextTheme error;
  final TextTheme bold;
  static TextTheme _buildBold({
    required final TextTheme textTheme,
  }) => textTheme.copyWith(
    displayLarge: textTheme.displayLarge?.copyWith(fontWeight: FontWeight.bold),
    displayMedium: textTheme.displayMedium?.copyWith(
      fontWeight: FontWeight.bold,
    ),
    displaySmall: textTheme.displaySmall?.copyWith(fontWeight: FontWeight.bold),
    headlineLarge: textTheme.headlineLarge?.copyWith(
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: textTheme.headlineMedium?.copyWith(
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: textTheme.headlineSmall?.copyWith(
      fontWeight: FontWeight.bold,
    ),
    labelLarge: textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold),
    labelMedium: textTheme.labelMedium?.copyWith(fontWeight: FontWeight.bold),
    labelSmall: textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold),
    titleLarge: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
    titleMedium: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
    titleSmall: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
    bodyLarge: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
    bodyMedium: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
    bodySmall: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
  );
  static TextTheme _buildError({
    required final TextTheme textTheme,
    required final Color errorColor,
  }) => textTheme.apply(
    bodyColor: errorColor,
    displayColor: errorColor,
    decorationColor: errorColor,
  );
}
