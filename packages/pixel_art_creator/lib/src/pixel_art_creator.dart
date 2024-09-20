// ```dart:packages/pixel_art_creator/lib/src/pixel_art_creator.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/pixel_provider.dart';
import 'widgets/export_button.dart';
import 'widgets/pixel_canvas.dart';
import 'widgets/tool_palette.dart';

class PixelArtCreator extends StatefulWidget {
  const PixelArtCreator({super.key});

  @override
  _PixelArtCreatorState createState() => _PixelArtCreatorState();
}

class _PixelArtCreatorState extends State<PixelArtCreator> {
  Size _canvasSize = const Size(300, 300);

  void _setCanvasSize(Size size) {
    setState(() {
      _canvasSize = size;
    });
  }

  @override
  Widget build(final BuildContext context) => ChangeNotifierProvider(
        create: (_) => PixelProvider(),
        child: Scaffold(
          appBar: AppBar(title: const Text('Pixel Art Creator')),
          body: Column(
            children: [
              ToolPalette(),
              SizedBox(
                width: _canvasSize.width,
                height: _canvasSize.height,
                child: const PixelCanvas(),
              ),
              ExportButton(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => _setCanvasSize(const Size(200, 200)),
                    child: const Text('Set Canvas to 200x200'),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () => _setCanvasSize(const Size(400, 400)),
                    child: const Text('Set Canvas to 400x400'),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
