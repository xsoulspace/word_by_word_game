import 'dart:async';
import 'dart:math';

import 'package:flame/components.dart' hide Timer;
import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/extensions.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flame_forge2d/flame_forge2d.dart';
import 'package:flutter/material.dart' hide Image;

///https://github.com/flame-engine/flame/blob/main/examples/lib/stories/collision_detection/raycast_example.dart
void main(final List<String> args) {
  runApp(
    GameWidget(game: RaycastExample()),
  );
}

class RaycastExample extends Forge2DGame with MouseMovementDetector {
  RaycastExample() : super(gravity: Vector2.zero());
  static const String description = '''
    This example shows how raycasts can be used to find nearest and farthest
    fixtures.
    Red ray finds the nearest fixture and blue ray finds the farthest fixture.
  ''';

  final random = Random();

  final redPoints = <Vector2>[];
  final bluePoints = <Vector2>[];

  Box? nearestBox;
  Box? farthestBox;

  @override
  Future<void> onLoad() async {
    super.onLoad();
    world.addAll(createBoundaries(this));

    const numberOfRows = 3;
    const numberOfBoxes = 4;
    for (var i = 0; i < numberOfBoxes; ++i) {
      for (var j = 0; j < numberOfRows; ++j) {
        world.add(Box(Vector2(i * 10, j * 20 - 20)));
      }
    }
    world.add(
      LineComponent(
        redPoints,
        Paint()
          ..color = Colors.green
          ..strokeWidth = 1,
      ),
    );
    world.add(
      LineComponent(
        bluePoints,
        Paint()
          ..color = Colors.blue
          ..strokeWidth = 1,
      ),
    );
  }

  @override
  void onMouseMove(final PointerHoverInfo info) {
    final rayStart = screenToWorld(
      Vector2(
        camera.viewport.size.x / 4,
        camera.viewport.size.y / 2,
      ),
    );

    final worldPosition = screenToWorld(info.eventPosition.widget);
    final redRayTarget = worldPosition + Vector2(0, 2);
    fireRedRay(rayStart, redRayTarget);

    final blueRayTarget = worldPosition - Vector2(0, 2);
    fireBlueRay(rayStart, blueRayTarget);

    super.onMouseMove(info);
  }

  void fireBlueRay(final Vector2 rayStart, final Vector2 rayTarget) {
    bluePoints.clear();
    bluePoints.add(rayStart);

    final farthestCallback = FarthestBoxRayCastCallback();
    world.raycast(farthestCallback, rayStart, rayTarget);

    if (farthestCallback.farthestPoint != null) {
      bluePoints.add(farthestCallback.farthestPoint!);
    } else {
      bluePoints.add(rayTarget);
    }
    farthestBox = farthestCallback.box;
  }

  void fireRedRay(final Vector2 rayStart, final Vector2 rayTarget) {
    redPoints.clear();
    redPoints.add(rayStart);

    final nearestCallback = NearestBoxRayCastCallback();
    world.raycast(nearestCallback, rayStart, rayTarget);

    if (nearestCallback.nearestPoint != null) {
      redPoints.add(nearestCallback.nearestPoint!);
    } else {
      redPoints.add(rayTarget);
    }
    nearestBox = nearestCallback.box;
  }

  @override
  void update(final double dt) {
    super.update(dt);
    children.whereType<Box>().forEach((final component) {
      if ((component == nearestBox) && (component == farthestBox)) {
        component.paint.color = Colors.yellow;
      } else if (component == nearestBox) {
        component.paint.color = Colors.red;
      } else if (component == farthestBox) {
        component.paint.color = Colors.blue;
      } else {
        component.paint.color = Colors.white;
      }
    });
  }
}

class LineComponent extends Component {
  LineComponent(this.points, this.paint);

  final List<Vector2> points;
  final Paint paint;
  final Path path = Path();

  @override
  void update(final double dt) {
    path
      ..reset()
      ..addPolygon(
        points.map((final p) => p.toOffset()).toList(growable: false),
        false,
      );
  }

  @override
  void render(final Canvas canvas) {
    for (var i = 0; i < points.length - 1; ++i) {
      canvas.drawLine(
        points[i].toOffset(),
        points[i + 1].toOffset(),
        paint,
      );
    }
  }
}

class Box extends BodyComponent {
  Box(this.initialPosition);

  final Vector2 initialPosition;

  @override
  Body createBody() {
    final shape = PolygonShape()..setAsBoxXY(2, 4);
    final fixtureDef = FixtureDef(shape, userData: this);
    final bodyDef = BodyDef(position: initialPosition);
    return world.createBody(bodyDef)..createFixture(fixtureDef);
  }
}

class NearestBoxRayCastCallback extends RayCastCallback {
  Box? box;
  Vector2? nearestPoint;
  Vector2? normalAtInter;

  @override
  double reportFixture(
    final Fixture fixture,
    final Vector2 point,
    final Vector2 normal,
    final double fraction,
  ) {
    nearestPoint = point.clone();
    normalAtInter = normal.clone();
    box = fixture.userData as Box?;

    // Returning fraction implies that we care only about
    // fixtures that are closer to ray start point than
    // the current fixture
    return fraction;
  }
}

class FarthestBoxRayCastCallback extends RayCastCallback {
  Box? box;
  Vector2? farthestPoint;
  Vector2? normalAtInter;
  double previousFraction = 0;

  @override
  double reportFixture(
    final Fixture fixture,
    final Vector2 point,
    final Vector2 normal,
    final double fraction,
  ) {
    // Value of fraction is directly proportional to
    // the distance of fixture from ray start point.
    // So we are interested in the current fixture only if
    // it has a higher fraction value than previousFraction.
    if (previousFraction < fraction) {
      farthestPoint = point.clone();
      normalAtInter = normal.clone();
      box = fixture.userData as Box?;
      previousFraction = fraction;
    }

    return 1;
  }
}

List<Wall> createBoundaries(
  final Forge2DGame game, {
  final double? strokeWidth,
}) {
  final visibleRect = game.camera.visibleWorldRect;
  final topLeft = visibleRect.topLeft.toVector2();
  final topRight = visibleRect.topRight.toVector2();
  final bottomRight = visibleRect.bottomRight.toVector2();
  final bottomLeft = visibleRect.bottomLeft.toVector2();

  return [
    Wall(topLeft, topRight, strokeWidth: strokeWidth),
    Wall(topRight, bottomRight, strokeWidth: strokeWidth),
    Wall(bottomLeft, bottomRight, strokeWidth: strokeWidth),
    Wall(topLeft, bottomLeft, strokeWidth: strokeWidth),
  ];
}

class Wall extends BodyComponent {
  Wall(this.start, this.end, {final double? strokeWidth})
      : strokeWidth = strokeWidth ?? 1;
  final Vector2 start;
  final Vector2 end;
  final double strokeWidth;

  @override
  Body createBody() {
    final shape = EdgeShape()..set(start, end);
    final fixtureDef = FixtureDef(shape, friction: 0.3);
    final bodyDef = BodyDef(
      userData: this, // To be able to determine object in collision
      position: Vector2.zero(),
    );
    paint.strokeWidth = strokeWidth;

    return world.createBody(bodyDef)..createFixture(fixtureDef);
  }
}
