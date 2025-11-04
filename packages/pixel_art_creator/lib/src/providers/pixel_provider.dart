// lib/src/providers/pixel_provider.dart
import 'package:flutter/material.dart';

import '../models/pixel.dart';

enum Tool { pixel, line, border, eraser }

class PixelProvider extends ChangeNotifier {
  final Map<Color, List<Rect>> _colorRects = {};
  Tool _currentTool = Tool.pixel;
  int _gridSize = 16;
  int _columns = 32;
  int _rows = 32;
  double _pixelSize = 10;

  Map<Color, List<Rect>> get colorRects => _colorRects;
  Tool get currentTool => _currentTool;
  int get gridSize => _gridSize;
  int get columns => _columns;
  int get rows => _rows;
  double get pixelSize => _pixelSize;
  double get canvasWidth => _columns * _pixelSize;
  double get canvasHeight => _rows * _pixelSize;

  Offset? _lineStart;
  Offset? _currentHover;

  Offset? get lineStart => _lineStart;
  Offset? get currentHover => _currentHover;

  void setTool(Tool tool) {
    _currentTool = tool;
    notifyListeners();
  }

  void setGridSize(int size) {
    _gridSize = size;
    notifyListeners();
  }

  void setColumns(int value) {
    _columns = value;
    notifyListeners();
  }

  void setRows(int value) {
    _rows = value;
    notifyListeners();
  }

  void addPixel(Pixel pixel) {
    final snappedPosition = _snapToGrid(pixel.position);
    final rect = Rect.fromLTWH(
      snappedPosition.dx,
      snappedPosition.dy,
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
    final snappedPosition = _snapToGrid(position);
    final eraseRect = Rect.fromLTWH(
      snappedPosition.dx,
      snappedPosition.dy,
      _gridSize.toDouble(),
      _gridSize.toDouble(),
    );

    bool changed = false;
    _colorRects.forEach((color, rects) {
      final initialLength = rects.length;
      rects.removeWhere((rect) => rect.overlaps(eraseRect));
      if (rects.length != initialLength) {
        changed = true;
      }
    });
    _colorRects.removeWhere((_, rects) => rects.isEmpty);

    if (changed) {
      notifyListeners();
    }
  }

  void drawLine(Offset start, Offset end, Color color) {
    final snappedStart = _snapToGrid(start);
    final snappedEnd = _snapToGrid(end);
    final pixels = _getLinePixels(snappedStart, snappedEnd);

    for (final pixel in pixels) {
      addPixel(Pixel(
        position: pixel,
        color: color,
        size: _gridSize.toDouble(),
      ));
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

  void startLine(Offset position) {
    _lineStart = position;
    notifyListeners();
  }

  void endLine(Offset position) {
    if (_lineStart != null) {
      drawLine(_lineStart!, position, Colors.black); // Or current color
      _lineStart = null;
      _currentHover = null;
      notifyListeners();
    }
  }

  void updateHover(Offset position) {
    _currentHover = position;
    notifyListeners();
  }

  List<Offset> getPreviewLine() {
    if (_lineStart == null || _currentHover == null) return [];
    return _getLinePixels(_lineStart!, _currentHover!);
  }

  List<Offset> _getLinePixels(Offset start, Offset end) {
    List<Offset> pixels = [];
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
      pixels.add(Offset(x0 * _gridSize.toDouble(), y0 * _gridSize.toDouble()));
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
    return pixels;
  }

  Offset _snapToGrid(Offset position) {
    return Offset(
      (position.dx / _gridSize).round() * _gridSize.toDouble(),
      (position.dy / _gridSize).round() * _gridSize.toDouble(),
    );
  }
}
