import 'package:flame/components.dart';
import 'package:flame/events.dart';

/// Where should be placed
class LetterTargetRowComponent extends Component {}

/// Where is letters kept
class LettersAreaComponent extends Component {}

/// What is dragged
class LetterComponent extends PositionComponent with DragCallbacks {}
