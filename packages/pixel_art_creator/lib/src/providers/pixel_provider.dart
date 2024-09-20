// lib/src/providers/pixel_provider.dart
import 'package:flutter/material.dart';

import '../models/pixel.dart';

enum Tool { pixel, line, border, eraser }

class PixelProvider extends ChangeNotifier {
  final Map<Color, List<Rect>> _colorRects = {};
  Tool _currentTool = Tool.pixel;
  int _gridSize = 16;

  Map<Color, List<Rect>> get colorRects => _colorRects;
  Tool get currentTool => _currentTool;
  int get gridSize => _gridSize;

  void setTool(Tool tool) {
    _currentTool = tool;
    notifyListeners();
  }

  void setGridSize(int size) {
    _gridSize = size;
    notifyListeners();
  }

  void addPixel(Pixel pixel) {
    final rect = Rect.fromLTWH(
      pixel.position.dx,
      pixel.position.dy,
      _gridSize.toDouble(),
      _gridSize.toDouble(),
    );
    _colorRects.putIfAbsent(pixel.color, () => []).add(rect);
    _optimizeRects(pixel.color);
    notifyListeners();
  }

  void clearPixels() {
    _colorRects.clear();
    notifyListeners();
  }

  void erase(Offset position) {
    final eraseRect = Rect.fromCenter(
      center: position,
      width: _gridSize.toDouble(),
      height: _gridSize.toDouble(),
    );

    _colorRects.forEach((color, rects) {
      rects.removeWhere((rect) => rect.overlaps(eraseRect));
    });
    _colorRects.removeWhere((_, rects) => rects.isEmpty);
    notifyListeners();
  }

  void drawLine(Offset start, Offset end, Color color) {
    int x0 = (start.dx / _gridSize).round();
    int y0 = (start.dy / _gridSize).round();
    int x1 = (end.dx / _gridSize).round();
    int y1 = (end.dy / _gridSize).round();
    int dx = (x1 - x0).abs();
    int dy = (y1 - y0).abs();
    int sx = x0 < x1 ? 1 : -1;
    int sy = y0 < y1 ? 1 : -1;
    int err = dx - dy;

    while (true) {
      addPixel(Pixel(
        position: Offset(x0 * _gridSize.toDouble(), y0 * _gridSize.toDouble()),
        color: color,
        size: _gridSize.toDouble(),
      ));
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

  void drawBorder(Offset topLeft, Offset bottomRight, Color color) {
    drawLine(topLeft, Offset(bottomRight.dx, topLeft.dy), color);
    drawLine(Offset(bottomRight.dx, topLeft.dy), bottomRight, color);
    drawLine(bottomRight, Offset(topLeft.dx, bottomRight.dy), color);
    drawLine(Offset(topLeft.dx, bottomRight.dy), topLeft, color);
  }

  void _optimizeRects(Color color) {
    if (!_colorRects.containsKey(color)) return;

    final rects = _colorRects[color]!;
    final mergedRects = _mergeRects(rects);
    _colorRects[color] = mergedRects;
  }

  List<Rect> _mergeRects(List<Rect> rects) {
    if (rects.isEmpty) return [];

    final List<Rect> merged = [];
    rects.sort((a, b) => a.left.compareTo(b.left));

    Rect current = rects.first;
    for (int i = 1; i < rects.length; i++) {
      if (_canMerge(current, rects[i])) {
        current = current.expandToInclude(rects[i]);
      } else {
        merged.add(current);
        current = rects[i];
      }
    }
    merged.add(current);

    return merged;
  }

  bool _canMerge(Rect a, Rect b) {
    return (a.left == b.left &&
            a.width == b.width &&
            a.top + a.height == b.top) ||
        (a.top == b.top && a.height == b.height && a.left + a.width == b.left);
  }

  String exportAsCustomPainter() {
    final buffer = StringBuffer();
    buffer.writeln('class ExportedPainter extends CustomPainter {');
    buffer.writeln('  @override');
    buffer.writeln('  void paint(Canvas canvas, Size size) {');
    _colorRects.forEach((color, rects) {
      buffer
          .writeln('    final paint = Paint()..color = Color(${color.value});');
      for (final rect in rects) {
        buffer.writeln('    canvas.drawRect(${rect.toString()}, paint);');
      }
    });
    buffer.writeln('  }');
    buffer.writeln('  @override');
    buffer.writeln(
        '  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;');
    buffer.writeln('}');
    return buffer.toString();
  }
}
