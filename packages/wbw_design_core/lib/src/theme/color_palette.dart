// Pixel Art Based Design Color Palette
// Inspired by Apple Design, Material Design, Fluent UI, and Game UI Database

import 'package:flutter/material.dart';

class UiColors {
  UiColors._();
  static const dark = Color(0xFF1F1F1F);
  static final darkO50 = dark.withOpacity(0.5);
  static const mediumDark = Color(0xFF6B6B6B);
  static const mediumLight = Color(0xFFAEAEAE);
  static const light = Color(0xFFCECECE);
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

class UiFontSizes {
  UiFontSizes._();
  static const s12 = 12.0;
  static const s16 = 16.0;
  static const s20 = 20.0;
}

class UiDecorators {
  UiDecorators._();
  static const radiusSmall = 4.0;
  static const radiusMedium = 8.0;
  static const radiusLarge = 12.0;
}
