// lib/src/providers/pixel_provider.dart
import 'package:flutter/material.dart';

import '../models/pixel.dart';

enum Tool { pixel, line, border, eraser }

class PixelProvider with ChangeNotifier {
  final List<Pixel> _pixels = [];
  Tool _currentTool = Tool.pixel;
  double _pixelSize = 10.0;

  List<Pixel> get pixels => _pixels;
  Tool get currentTool => _currentTool;
  double get pixelSize => _pixelSize;

  void setTool(Tool tool) {
    _currentTool = tool;
    notifyListeners();
  }

  void setPixelSize(double size) {
    _pixelSize = size;
    notifyListeners();
  }

  void addPixel(Pixel pixel) {
    _pixels.add(pixel);
    notifyListeners();
  }

  void clearPixels() {
    _pixels.clear();
    notifyListeners();
  }

  // Erase pixels within the eraser size
  void erase(Offset position) {
    _pixels.removeWhere((pixel) {
      final distance = (pixel.position - position).distance;
      return distance <= _pixelSize;
    });
    notifyListeners();
  }

  // Simple line drawing algorithm (Bresenham's)
  void drawLine(Offset start, Offset end, Color color) {
    int x0 = start.dx.toInt();
    int y0 = start.dy.toInt();
    int x1 = end.dx.toInt();
    int y1 = end.dy.toInt();
    int dx = (x1 - x0).abs();
    int dy = (y1 - y0).abs();
    int sx = x0 < x1 ? 1 : -1;
    int sy = y0 < y1 ? 1 : -1;
    int err = dx - dy;

    while (true) {
      addPixel(Pixel(
          position: Offset(x0.toDouble(), y0.toDouble()),
          color: color,
          size: _pixelSize));
      if (x0 == x1 && y0 == y1) break;
      int e2 = 2 * err;
      if (e2 > -dy) {
        err -= dy;
        x0 += sx;
      }
      if (e2 < dx) {
        err += dx;
        y0 += sy;
      }
    }
  }

  // Draw border as rectangle
  void drawBorder(Offset topLeft, Offset bottomRight, Color color) {
    drawLine(topLeft, Offset(bottomRight.dx, topLeft.dy), color);
    drawLine(Offset(bottomRight.dx, topLeft.dy), bottomRight, color);
    drawLine(bottomRight, Offset(topLeft.dx, bottomRight.dy), color);
    drawLine(Offset(topLeft.dx, bottomRight.dy), topLeft, color);
  }

  // Export pixels as CustomPainter code
  String exportAsCustomPainter() {
    final buffer = StringBuffer();
    buffer.writeln('class ExportedPainter extends CustomPainter {');
    buffer.writeln('  @override');
    buffer.writeln('  void paint(Canvas canvas, Size size) {');
    for (final pixel in _pixels) {
      buffer.writeln(
        '    canvas.drawRect(Rect.fromLTWH(${pixel.position.dx}, ${pixel.position.dy}, ${pixel.size}, ${pixel.size}), Paint()..color = ${pixel.color});',
      );
    }
    buffer.writeln('  }');
    buffer.writeln('  @override');
    buffer.writeln(
      '  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;',
    );
    buffer.writeln('}');
    return buffer.toString();
  }
}
