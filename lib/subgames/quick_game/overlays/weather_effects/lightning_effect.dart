import 'dart:math';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flame/particles.dart';
import 'package:flutter/material.dart';

class LightningEffect extends ComputedParticle {
  LightningEffect({
    required final Vector2 startPosition,
    required final Vector2 endPosition,
  })  : _startPosition = startPosition,
        _endPosition = endPosition,
        super(
          renderer: (final canvas, final progress) {
            final length =
                lerpDouble(_minLength, _maxLength, progress.progress)!;
            final angle = lerpDouble(_minAngle, _maxAngle, progress.progress)!;
            final speed = lerpDouble(_minSpeed, _maxSpeed, progress.progress)!;

            final startPoint = startPosition;
            final endPoint =
                startPosition + Vector2(cos(angle), sin(angle)) * length;

            canvas.drawLine(
              startPoint.toOffset(),
              endPoint.toOffset(),
              _lightningPaint,
            );

            if (progress.progress < 1.0) {
              final newEndPoint = endPoint +
                  Vector2(cos(angle), sin(angle)) * speed * progress.progress;
              canvas.drawLine(
                endPoint.toOffset(),
                newEndPoint.toOffset(),
                _lightningPaint,
              );
            }
          },
        );
  static final Paint _lightningPaint = Paint()
    ..color = Colors.red
    ..strokeWidth = 4
    ..style = PaintingStyle.stroke;

  static const double _minLength = 50;
  static const double _maxLength = 200;
  static const double _minAngle = -45 * pi / 180;
  static const double _maxAngle = 45 * pi / 180;
  static const double _minSpeed = 200;
  static const double _maxSpeed = 500;

  final Vector2 _startPosition;
  final Vector2 _endPosition;
}
