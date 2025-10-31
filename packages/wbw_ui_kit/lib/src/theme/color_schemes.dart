part of 'theme.dart';

class AppColorSchemes {
  AppColorSchemes._({required this.light, required this.lightSurface});

  factory AppColorSchemes.brand() => AppColorSchemes._(
    lightSurface: BrandColorSchemes.lightSurface,
    light: BrandColorSchemes.light,
  );

  final ColorScheme light;
  final SurfaceColorScheme lightSurface;
}

class BrandColorSchemes {
  BrandColorSchemes._();
  static const light = ColorScheme(
    brightness: Brightness.light,
    primary: UiColors.dark,
    onPrimary: UiColors.offWhite,
    primaryContainer: UiColors.mediumLight,
    onPrimaryContainer: UiColors.dark,
    secondary: UiColors.mediumDark,
    onSecondary: UiColors.offWhite,
    secondaryContainer: UiColors.light,
    onSecondaryContainer: UiColors.dark,
    tertiary: UiColors.mediumLight,
    onTertiary: UiColors.dark,
    tertiaryContainer: UiColors.light,
    onTertiaryContainer: UiColors.dark,
    error: Color(0xFFBA1A1A),
    errorContainer: UiColors.light,
    onError: UiColors.offWhite,
    onErrorContainer: UiColors.dark,
    surface: UiColors.offWhite,
    onSurface: UiColors.dark,
    surfaceContainerHighest: UiColors.light,
    onSurfaceVariant: UiColors.mediumDark,
    outline: UiColors.mediumLight,
    onInverseSurface: UiColors.offWhite,
    inverseSurface: UiColors.dark,
    inversePrimary: UiColors.light,
    shadow: UiColors.dark,
    surfaceTint: UiColors.mediumLight,
  );
  static final lightSurface = SurfaceColorScheme(light);
}

class SurfaceColorScheme extends ThemeExtension<SurfaceColorScheme> {
  SurfaceColorScheme(final ColorScheme scheme)
    : surface1 = ElevationOverlay.applySurfaceTint(
        scheme.surface,
        scheme.surfaceTint,
        5,
      ),
      surface2 = ElevationOverlay.applySurfaceTint(
        scheme.surface,
        scheme.surfaceTint,
        8,
      ),
      surface3 = ElevationOverlay.applySurfaceTint(
        scheme.surface,
        scheme.surfaceTint,
        11,
      ),
      surface4 = ElevationOverlay.applySurfaceTint(
        scheme.surface,
        scheme.surfaceTint,
        12,
      ),
      surface5 = ElevationOverlay.applySurfaceTint(
        scheme.surface,
        scheme.surfaceTint,
        14,
      );
  SurfaceColorScheme._({
    required this.surface1,
    required this.surface2,
    required this.surface3,
    required this.surface4,
    required this.surface5,
  });

  final Color surface1;
  final Color surface2;
  final Color surface3;
  final Color surface4;
  final Color surface5;

  @override
  ThemeExtension<SurfaceColorScheme> copyWith() {
    throw UnsupportedError('copyWith');
  }

  @override
  ThemeExtension<SurfaceColorScheme> lerp(
    final ThemeExtension<SurfaceColorScheme>? other,
    final double t,
  ) {
    if (other is! SurfaceColorScheme) {
      return this;
    }
    return SurfaceColorScheme._(
      surface1: Color.lerp(surface1, other.surface1, t)!,
      surface2: Color.lerp(surface2, other.surface2, t)!,
      surface3: Color.lerp(surface3, other.surface3, t)!,
      surface4: Color.lerp(surface4, other.surface4, t)!,
      surface5: Color.lerp(surface5, other.surface5, t)!,
    );
  }
}
