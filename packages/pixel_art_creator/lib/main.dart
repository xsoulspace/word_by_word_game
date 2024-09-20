// lib/main.dart
import 'package:flutter/material.dart';
import 'package:pixel_art_creator/pixel_art_creator.dart';

void main() {
  runApp(const PixelArtApp());
}

class PixelArtApp extends StatelessWidget {
  const PixelArtApp({super.key});

  @override
  Widget build(final BuildContext context) => const MaterialApp(
        home: PixelArtCreator(),
      );
}
