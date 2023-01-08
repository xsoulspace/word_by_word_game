part of '../theme.dart';

class AppColorSchemes {
  AppColorSchemes._({
    required this.dark,
    required this.darkSurface,
    required this.light,
    required this.lightSurface,
  });

  factory AppColorSchemes.brand() {
    return AppColorSchemes._(
      darkSurface: BrandColorSchemes.darkSurface,
      dark: BrandColorSchemes.dark,
      lightSurface: BrandColorSchemes.lightSurface,
      light: BrandColorSchemes.light,
    );
  }

  /// Use this factory to create a new AppColorSchemes based on
  /// Material You token generation principle.
  // ignore: avoid_unused_constructor_parameters
  factory AppColorSchemes.fromAccentColor(final Color color) =>
      // TODO(arenukvern): add accent color scheme generation
      throw UnimplementedError();

  final ColorScheme light;
  final SurfaceColorScheme lightSurface;
  final ColorScheme dark;
  final SurfaceColorScheme darkSurface;
}
