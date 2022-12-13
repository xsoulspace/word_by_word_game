part of '../theme.dart';

class AppThemeData {
  AppThemeData._();
  static ThemeData from({
    required final ColorScheme colorScheme,
    required final SurfaceColorScheme surfaceColorScheme,
  }) {
    final theme = ThemeData.from(colorScheme: colorScheme, useMaterial3: true);
    return theme.copyWith(
      textTheme: GoogleFonts.openSansTextTheme(theme.textTheme),
      extensions: [surfaceColorScheme],
    );
  }

  static final brandLight = from(
    colorScheme: BrandColorSchemes.light,
    surfaceColorScheme: BrandColorSchemes.lightSurface,
  );
  static final brandDark = from(
    colorScheme: BrandColorSchemes.dark,
    surfaceColorScheme: BrandColorSchemes.darkSurface,
  );
}
