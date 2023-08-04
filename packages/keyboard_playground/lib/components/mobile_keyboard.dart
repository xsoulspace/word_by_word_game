import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame/palette.dart';
import 'package:flutter/rendering.dart';
import 'package:keyboard_playground/game.dart';

abstract interface class LettersPile {
  bool acceptLetter(final LetterComponent letter);
  bool removeLetter(final LetterComponent letter);
}

/// Where should be placed
class LetterTargetRowComponent extends PositionComponent
    implements LettersPile {
  @override
  bool acceptLetter(final LetterComponent letter) {
    // TODO: implement canAcceptLetter
    throw UnimplementedError();
  }

  @override
  bool removeLetter(final LetterComponent letter) {
    // TODO: implement removeLetter
    throw UnimplementedError();
  }

  Rect get cardRect => size.toRect();
  static Paint get backgroundPaint => Paint()..color = BasicPalette.red.color;
  @override
  void render(final Canvas canvas) {
    canvas.drawRect(cardRect, backgroundPaint);
    // TODO: implement render
    super.render(canvas);
  }
}

/// Where is letters kept
class LettersAreaComponent extends PositionComponent implements LettersPile {
  LettersAreaComponent({
    required super.position,
    this.lettersRowCount = 5,
    this.lettersColumnCount = 5,
  }) : super(
          size: Vector2(
            KeyboardsGame.cardSize.y * lettersRowCount,
            KeyboardsGame.cardSize.x * lettersColumnCount,
          ),
        );
  final letters = <LetterComponent>[];
  final int lettersRowCount;
  final int lettersColumnCount;
  @override
  FutureOr<void> onLoad() {
    letters.add(
      LetterComponent(),
    );
    addAll(letters);
    return super.onLoad();
  }

  @override
  bool acceptLetter(final LetterComponent letter) {
    // TODO: implement canAcceptLetter
    throw UnimplementedError();
  }

  @override
  bool removeLetter(final LetterComponent letter) {
    // TODO: implement removeLetter
    throw UnimplementedError();
  }

  Rect get cardRect => size.toRect();
  static Paint get backgroundPaint => Paint()..color = BasicPalette.red.color;
  @override
  void render(final Canvas canvas) {
    canvas.drawRect(cardRect, backgroundPaint);
    // TODO: implement render
    super.render(canvas);
  }
}

/// What is dragged
class LetterComponent extends PositionComponent with DragCallbacks {
  LetterComponent({
    this.isMovable = true,
  });
  final bool isMovable;
  @override
  FutureOr<void> onLoad() {
    size = KeyboardsGame.cardSize;
    return super.onLoad();
  }

  bool _isDragging = false;
  @override
  void onDragStart(final DragStartEvent event) {
    event.continuePropagation = true;
    super.onDragStart(event);
    if (isMovable) {
      _isDragging = true;

      priority = 100;
    }
  }

  @override
  void onDragUpdate(final DragUpdateEvent event) {
    if (!_isDragging) return;

    final cameraZoom = (findGame()! as FlameGame)
        .firstChild<CameraComponent>()!
        .viewfinder
        .zoom;
    position += event.delta / cameraZoom;
  }

  @override
  void onDragEnd(final DragEndEvent event) {
    event.continuePropagation = true;
    super.onDragEnd(event);
    if (!_isDragging) {
      return;
    }
    _isDragging = false;
    final dropPiles = parent!
        .componentsAtPoint(position + size / 2)
        .whereType<LettersPile>()
        .toList();
    if (dropPiles.isNotEmpty) {
      /// if (card is allowed to be dropped into this pile) {
      ///   remove the card from the current pile
      ///   create new letter there
      ///   add the card into the new pile
      /// }
    } else {}
  }

  static final RRect cardRRect = RRect.fromRectAndRadius(
    KeyboardsGame.cardSize.toRect(),
    const Radius.circular(KeyboardsGame.cardRadius),
  );
  static Paint get backgroundPaint => Paint()..color = BasicPalette.white.color;
  static TextPaint get textPaint => TextPaint(
        style: TextStyle(
          fontSize: 16,
          color: BasicPalette.black.color,
        ),
      );

  @override
  void render(final Canvas canvas) {
    super.render(canvas);
    canvas.drawRRect(cardRRect, backgroundPaint);
    textPaint.render(canvas, 'A', Vector2(size.x / 4, size.y / 4));
  }
}
