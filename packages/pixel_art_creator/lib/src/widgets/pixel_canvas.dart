// ```dart:packages/pixel_art_creator/lib/src/widgets/pixel_canvas.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/pixel.dart';
import '../providers/pixel_provider.dart';

class PixelCanvas extends StatefulWidget {
  const PixelCanvas({super.key});

  @override
  _PixelCanvasState createState() => _PixelCanvasState();
}

class _PixelCanvasState extends State<PixelCanvas> {
  Offset? _startPoint;

  @override
  Widget build(final BuildContext context) => GestureDetector(
        onTapUp: (details) {
          final box = context.findRenderObject()! as RenderBox;
          final localPos = box.globalToLocal(details.globalPosition);
          final provider = context.read<PixelProvider>();

          switch (provider.currentTool) {
            case Tool.pixel:
              provider.addPixel(
                  Pixel(position: localPos, size: provider.pixelSize));
              break;
            case Tool.eraser:
              provider.erase(localPos);
              break;
            case Tool.line:
            case Tool.border:
              if (_startPoint == null) {
                setState(() {
                  _startPoint = localPos;
                });
              } else {
                if (provider.currentTool == Tool.line) {
                  provider.drawLine(_startPoint!, localPos, Colors.black);
                } else if (provider.currentTool == Tool.border) {
                  provider.drawBorder(_startPoint!, localPos, Colors.black);
                }
                setState(() {
                  _startPoint = null;
                });
              }
              break;
            default:
              break;
          }
        },
        child: Consumer<PixelProvider>(
          builder: (context, pixelProvider, child) => CustomPaint(
            size: Size.infinite,
            painter: PixelPainter(pixels: pixelProvider.pixels),
          ),
        ),
      );
}

class PixelPainter extends CustomPainter {
  final List<Pixel> pixels;

  PixelPainter({required this.pixels});

  @override
  void paint(final Canvas canvas, final Size size) {
    for (final pixel in pixels) {
      final paint = Paint()..color = pixel.color;
      final rect = Rect.fromLTWH(
        pixel.position.dx,
        pixel.position.dy,
        pixel.size,
        pixel.size,
      );
      canvas.drawRect(rect, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
