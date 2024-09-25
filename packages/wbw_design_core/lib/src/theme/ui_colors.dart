// Pixel Art Based Design Color Palette
// Inspired by Apple Design, Material Design, Fluent UI, and Game UI Database

import 'package:flutter/material.dart';

/// A class that defines the color palette for the application.
///
/// This class provides static constants for various colors used throughout
/// the application, ensuring consistency in design.
///
/// Example usage:
/// ```dart
/// Container(color: UiColors.dark);
/// ```
class UiColors {
  UiColors._();

  /// A dark color used for primary text and important UI elements.
  static const dark = Color(0xFF1F1F1F);

  /// A semi-transparent version of the dark color.
  static final darkO50 = dark.withOpacity(0.5);

  /// A medium dark color used for secondary text.
  static const mediumDark = Color(0xFF6B6B6B);

  /// A medium light color used for disabled states.
  static const mediumLight = Color(0xFFAEAEAE);

  /// A light color used for borders and dividers.
  static const light = Color(0xFFCECECE);

  /// An off-white color used for backgrounds.
  static const offWhite = Color(0xFFFAFAFB);
  // Primary Shades - Light Yellow-Green
  // static const lightYellowGreen1 = Color(0xFFF0FFF4);
  // static const lightYellowGreen2 = Color(0xFFE0FFE0);
  // static const lightYellowGreen3 = Color(0xFFD0FFD0);

  // // Secondary Colors
  // static const accentGreen = Color(0xFF9AE6B4);
  // static const accentYellow = Color(0xFFFFF59A);
  // Additional colors can be added here as needed
}
