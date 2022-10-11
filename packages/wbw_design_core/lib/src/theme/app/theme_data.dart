part of '../theme.dart';

class AppThemeData {
  AppThemeData._();
  static ThemeData from({
    required final ColorScheme colorScheme,
  }) {
    final theme = ThemeData.from(colorScheme: colorScheme, useMaterial3: true);
    return theme.copyWith(
      textTheme: GoogleFonts.latoTextTheme(theme.textTheme),
    );
  }

  static final brandLight = from(colorScheme: BrandColorSchemes.light);
  static final brandDark = from(colorScheme: BrandColorSchemes.dark);
}
