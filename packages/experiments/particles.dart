/// https://github.com/flame-engine/flame/blob/main/examples/lib/stories/rendering/particles_example.dart
library;

import 'dart:async';
import 'dart:math';

import 'package:flame/components.dart' hide Timer;
import 'package:flame/game.dart';
import 'package:flame/particles.dart';
import 'package:flutter/material.dart' hide Image;

class ParticlesExample extends FlameGame {
  static const String description = '''
    In this example we show how to render endlessly falling snowflakes.
  ''';

  final Random rnd = Random();

  @override
  Future<void> onLoad() async {
    add(ParticleSystemComponent(particle: createSnowflakeParticle()));
  }

  Particle createSnowflakeParticle() => Particle.generate(
    count: 100,
    lifespan: double.infinity,
    generator: (final i) => AcceleratedParticle(
      position: Vector2(
        rnd.nextDouble() * size.x,
        rnd.nextDouble() * size.y - size.y, // Distribute vertically
      ),
      speed: Vector2(rnd.nextDouble() * 20 - 10, 20 + rnd.nextDouble() * 30),
      acceleration: Vector2(0, 1),
      child: CircleParticle(
        radius: 1 + rnd.nextDouble() * 2,
        paint: Paint()..color = Colors.white.withValues(alpha: 0.7),
      ),
    ),
  );

  @override
  void update(final double dt) {
    super.update(dt);

    // Reset snowflakes that fall off the bottom of the screen
    for (final component in children) {
      if (component is ParticleSystemComponent) {
        final particleSystem = component.particle!;
        if (particleSystem is ComposedParticle) {
          for (final particle in particleSystem.children) {
            if (particle is AcceleratedParticle &&
                particle.position.y > size.y) {
              particle.position.y = -10;
              particle.position.x = rnd.nextDouble() * size.x;
            }
          }
        }
      }
    }
  }
}

void main(final List<String> args) {
  runApp(GameWidget(game: ParticlesExample()));
}
