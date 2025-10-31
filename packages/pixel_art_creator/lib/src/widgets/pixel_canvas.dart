import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pixel_art_creator/src/models/pixel.dart';
import 'package:provider/provider.dart';

import '../providers/pixel_provider.dart';

class PixelCanvas extends StatelessWidget {
  final Size canvasSize;

  const PixelCanvas({Key? key, required this.canvasSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pixelProvider = Provider.of<PixelProvider>(context);

    return GestureDetector(
      onTapDown: (details) => _handleTapDown(details, pixelProvider),
      onPanStart: (details) => _handlePanStart(details, pixelProvider),
      onPanUpdate: (details) => _handlePanUpdate(details, pixelProvider),
      child: MouseRegion(
        onHover: (event) => _handleHover(event, pixelProvider),
        child: CustomPaint(
          size: canvasSize,
          painter: PixelPainter(pixelProvider),
        ),
      ),
    );
  }

  void _handleTapDown(TapDownDetails details, PixelProvider provider) {
    final position = _snapToGrid(details.localPosition, provider.gridSize);
    _handleInteraction(position, provider);
  }

  void _handlePanStart(DragStartDetails details, PixelProvider provider) {
    final position = _snapToGrid(details.localPosition, provider.gridSize);
    _handleInteraction(position, provider);
  }

  void _handlePanUpdate(DragUpdateDetails details, PixelProvider provider) {
    final position = _snapToGrid(details.localPosition, provider.gridSize);
    _handleInteraction(position, provider);
  }

  void _handleInteraction(Offset position, PixelProvider provider) {
    switch (provider.currentTool) {
      case Tool.pixel:
        provider.addPixel(Pixel(
          position: position,
          color: Colors.black, // Or current color
          size: provider.gridSize.toDouble(),
        ));
        break;
      case Tool.line:
        if (provider.lineStart == null) {
          provider.startLine(position);
        } else {
          provider.endLine(position);
        }
        break;
      case Tool.eraser:
        provider.erase(position);
        break;
      case Tool.border:
        // Implement border tool logic here
        break;
    }
  }

  void _handleHover(PointerHoverEvent event, PixelProvider provider) {
    final position = _snapToGrid(event.localPosition, provider.gridSize);
    if (provider.currentTool == Tool.line && provider.lineStart != null) {
      provider.updateHover(position);
    }
  }

  Offset _snapToGrid(Offset position, int gridSize) {
    return Offset(
      (position.dx / gridSize).round() * gridSize.toDouble(),
      (position.dy / gridSize).round() * gridSize.toDouble(),
    );
  }
}

class PixelPainter extends CustomPainter {
  final PixelProvider pixelProvider;

  PixelPainter(this.pixelProvider);

  @override
  void paint(Canvas canvas, Size size) {
    pixelProvider.colorRects.forEach((color, rects) {
      final paint = Paint()..color = color;
      for (final rect in rects) {
        canvas.drawRect(rect, paint);
      }
    });

    // Draw preview line
    if (pixelProvider.currentTool == Tool.line &&
        pixelProvider.lineStart != null &&
        pixelProvider.currentHover != null) {
      final previewPixels = pixelProvider.getPreviewLine();
      final previewPaint = Paint()
        ..color = Colors.black.withOpacity(0.5)
        ..style = PaintingStyle.fill;
      for (final pixel in previewPixels) {
        canvas.drawRect(
          Rect.fromLTWH(
            pixel.dx,
            pixel.dy,
            pixelProvider.gridSize.toDouble(),
            pixelProvider.gridSize.toDouble(),
          ),
          previewPaint,
        );
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
