// Pixel Art Based Design Color Palette
// Inspired by Apple Design, Material Design, Fluent UI, and Game UI Database

import 'package:flutter/material.dart';

class AppColorsTest {
  // Primary Colors
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);

  // Primary Shades - Light Yellow-Green
  static const lightYellowGreen1 = Color(0xFFF0FFF4);
  static const lightYellowGreen2 = Color(0xFFE0FFE0);
  static const lightYellowGreen3 = Color(0xFFD0FFD0);

  // Secondary Colors
  static const accentGreen = Color(0xFF9AE6B4);
  static const accentYellow = Color(0xFFFFF59A);

  // Background Colors
  static const backgroundPrimary = white;
  static const backgroundSecondary = lightYellowGreen1;

  // Text Colors
  static const textPrimary = black;
  static const textSecondary = lightYellowGreen3;

  // Button Colors
  static const buttonPrimary = lightYellowGreen2;
  static const buttonText = black;

  // Shades for Shadows and Highlights
  static const shadow = Color(0x1A000000);
  static const highlight = Color(0x1AFFFFFF);

  // Hot Air Balloon Power Colors
  static const hotAirBalloonPowerBackground =
      Color(0xFFE0FFEA); // Very light yellow-green shade
  static const hotAirBalloonPowerForeground =
      accentGreen; // Accent Green for foreground
}
