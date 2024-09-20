import 'package:flutter/material.dart';

class Pixel {
  Pixel({required this.position, this.color = Colors.black, this.size = 10.0});
  final Offset position;
  final Color color;
  final double size;
}
