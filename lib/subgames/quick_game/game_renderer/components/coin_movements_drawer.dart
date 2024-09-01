import 'package:flame/components.dart';
import 'package:flame/extensions.dart';
import 'package:flame/particles.dart';
import 'package:flutter/material.dart';

class RainEffectComponent extends PositionComponent {
  RainEffectComponent({
    this.dropCount = 10,
    this.dropSpeed = 10,
    this.dropColor = Colors.red,
  });

  final int dropCount;
  final double dropSpeed;
  final Color dropColor;

  @override
  Future<void> onLoad() async {
    super.onLoad();
    final particle = Particle.generate(
      count: dropCount,
      generator: (final i) => AcceleratedParticle(
        acceleration: Vector2(0, dropSpeed),
        child: CircleParticle(
          radius: 1,
          paint: Paint()..color = dropColor,
        ),
      ),
    );

    add(ParticleSystemComponent(particle: particle));
  }
}
