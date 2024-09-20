import 'package:flutter/material.dart';
import 'package:pixel_art_creator/pixel_art_creator.dart';
import 'package:pixel_art_creator/src/providers/pixel_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const PixelArtApp());

class PixelArtApp extends StatelessWidget {
  const PixelArtApp({super.key});

  @override
  Widget build(final BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => PixelProvider()),
        ],
        child: const MaterialApp(
          home: PixelArtCreator(),
        ),
      );
}
