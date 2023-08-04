import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';

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
}

/// Where is letters kept
class LettersAreaComponent extends PositionComponent implements LettersPile {
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
}

/// What is dragged
class LetterComponent extends PositionComponent with DragCallbacks {
  LetterComponent({
    this.isMovable = true,
  });
  final bool isMovable;
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
}
