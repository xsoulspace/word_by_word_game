import 'package:flutter/material.dart';
import 'package:pixel_art_creator/src/models/pixel.dart';
import 'package:provider/provider.dart';

import '../providers/pixel_provider.dart';

class PixelCanvas extends StatefulWidget {
  const PixelCanvas({super.key});

  @override
  _PixelCanvasState createState() => _PixelCanvasState();
}

class _PixelCanvasState extends State<PixelCanvas> {
  Offset? _startPoint;

  @override
  Widget build(BuildContext context) => Consumer<PixelProvider>(
        builder: (context, provider, child) => GestureDetector(
          onPanUpdate: (details) {
            final box = context.findRenderObject()! as RenderBox;
            final localPos = box.globalToLocal(details.globalPosition);
            final snappedPos = _snapToGrid(localPos, provider.gridSize);

            switch (provider.currentTool) {
              case Tool.pixel:
                provider.addPixel(Pixel(
                    position: snappedPos,
                    color: Colors.black,
                    size: provider.gridSize.toDouble()));
                break;
              case Tool.eraser:
                provider.erase(snappedPos);
                break;
              case Tool.line:
                if (_startPoint != null) {
                  provider.drawLine(_startPoint!, snappedPos, Colors.black);
                }
                break;
              case Tool.border:
                if (_startPoint != null) {
                  provider.drawBorder(_startPoint!, snappedPos, Colors.black);
                }
                break;
            }
          },
          onPanStart: (details) {
            final box = context.findRenderObject()! as RenderBox;
            final localPos = box.globalToLocal(details.globalPosition);
            _startPoint = _snapToGrid(localPos, provider.gridSize);
          },
          onPanEnd: (_) => _startPoint = null,
          child: CustomPaint(
            size: Size.infinite,
            painter: PixelPainter(
                colorRects: provider.colorRects, gridSize: provider.gridSize),
          ),
        ),
      );

  Offset _snapToGrid(Offset position, int gridSize) => Offset(
        (position.dx / gridSize).round() * gridSize.toDouble(),
        (position.dy / gridSize).round() * gridSize.toDouble(),
      );
}

class PixelPainter extends CustomPainter {
  final Map<Color, List<Rect>> colorRects;
  final int gridSize;

  PixelPainter({required this.colorRects, required this.gridSize});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    // Draw grid
    paint.color = Colors.grey.withOpacity(0.3);
    for (var i = 0; i < size.width; i += gridSize) {
      canvas.drawLine(
          Offset(i.toDouble(), 0), Offset(i.toDouble(), size.height), paint);
    }
    for (var i = 0; i < size.height; i += gridSize) {
      canvas.drawLine(
          Offset(0, i.toDouble()), Offset(size.width, i.toDouble()), paint);
    }

    // Draw optimized pixel rects
    colorRects.forEach((color, rects) {
      paint.color = color;
      for (final rect in rects) {
        canvas.drawRect(rect, paint);
      }
    });
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
