import 'dart:async';
import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboard_elements.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboard_models.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/elements.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_composition_bar.dart';

class WordFieldController extends ChangeNotifier {
  WordFieldController({
    required final CurrentWordModel currentWord,
  }) {
    split(
      inactiveIndexes: currentWord.inactiveIndexes,
      text: currentWord.fullWord,
    );
  }
  int _caretIndex = 0;
  final controller = TextEditingController();
  CurrentWordModel get currentWord => CurrentWordModel(
        fullWord: controller.text,
        inactiveIndexes: _inactiveCharacters
            .map(
              (final inactiveChar) =>
                  _items.indexWhere((final char) => char.id == inactiveChar.id),
            )
            .where((final i) => i >= 0)
            .toList(),
      );
  set currentWord(final CurrentWordModel currentWord) {
    split(
      inactiveIndexes: currentWord.inactiveIndexes,
      text: currentWord.fullWord,
    );
  }

  final _inactiveCharacters = <LetterModel>[];
  UnmodifiableListView<LetterModel> get inactiveCharacters =>
      UnmodifiableListView(_inactiveCharacters);
  set inactiveCharacters(final List<LetterModel> characters) {
    _inactiveCharacters
      ..clear()
      ..addAll(characters);
    notifyListeners();
  }

  void clear() {
    _items.clear();
    _inactiveCharacters.clear();
    controller.clear();
    notifyListeners();
  }

  final List<LetterModel> _items = [];
  UnmodifiableListView<LetterModel> get items => UnmodifiableListView(_items);
  set items(final List<LetterModel> values) {
    _items
      ..clear()
      ..addAll(values);
    join();
    notifyListeners();
  }

  String join() {
    final text = _items.map((final e) => e.title).join();
    controller.text = text;
    notifyListeners();
    return text;
  }

  List<LetterModel> split({
    required final List<int> inactiveIndexes,
    required final String text,
  }) {
    _items.clear();
    _inactiveCharacters.clear();
    _caretIndex = 0;
    controller.text = text;
    for (var i = 0; i < controller.text.length; i++) {
      final letter = LetterModel(title: text[i]);
      if (inactiveIndexes.contains(i)) {
        _inactiveCharacters.add(letter);
      }

      _items.add(letter);
    }
    notifyListeners();
    return _items;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

/// use for word field only
class WordField extends StatefulWidget {
  const WordField({
    required this.controller,
    super.key,
  });
  final WordFieldController controller;
  @override
  State<WordField> createState() => _WordFieldState();
}

class _WordFieldState extends State<WordField> {
  UnmodifiableListView<LetterModel> get _inactiveCharacters =>
      UnmodifiableListView(_controller.inactiveCharacters);
  set _inactiveCharacters(final List<LetterModel> values) {
    _controller.inactiveCharacters = values;
    setState(() {});
  }

  StreamSubscription<UiKeyboardEvent>? _keyboardSubscription;
  UnmodifiableListView<LetterModel> get _items => _controller.items;
  set _items(final List<LetterModel> values) {
    _controller.items = values;
  }

  WordFieldController get _controller => widget.controller;

  void _onCaretIndexChanged(
    final int eNewIndex, {
    final KeyboardDirection direction = KeyboardDirection.right,
  }) {
    final int newIndex = eNewIndex;
    if (newIndex > _items.length) return;
    if (newIndex < 0) return;
    _controller._caretIndex =
        _protectCaretIndex(direction: direction, newIndex: newIndex);

    setState(() {});
  }

  int _protectCaretIndex({
    required final int newIndex,
    required final KeyboardDirection direction,
  }) {
    int? leftIndex;
    int? rightIndex;
    for (final ($1, $2) in _items.indexed) {
      final index = newIndex <= $1 ? $1 + 1 : $1;
      if (_inactiveCharacters.contains($2)) {
        leftIndex ??= index;
        rightIndex ??= index;
        if (index > rightIndex) {
          rightIndex = index;
        }
      }
    }
    if (leftIndex != null && rightIndex != null) {
      if (newIndex >= leftIndex && newIndex <= rightIndex) {
        return switch (direction) {
          KeyboardDirection.left => leftIndex,
          KeyboardDirection.right => rightIndex,
        };
      }
    }

    return newIndex;
  }

  void _onLetterPressed(final String letter) {
    _onItemsChanged(
      [..._items]..insert(_controller._caretIndex, LetterModel(title: letter)),
    );
    _controller._caretIndex++;
    setState(() {});
  }

  void _onDelete() {
    if (_items.isEmpty) return;
    if (_items.length == _inactiveCharacters.length) return;
    if (_controller._caretIndex == 0) {
      if (_items.isNotEmpty) {
        _onItemsChanged([..._items]..removeAt(0));
      }
    } else {
      final initialNewIndex = _controller._caretIndex - 1;
      int newIndex = _protectCaretIndex(
        direction: initialNewIndex == 0
            ? KeyboardDirection.right
            : KeyboardDirection.left,
        newIndex: initialNewIndex,
      );
      if (initialNewIndex > newIndex) {
        newIndex = newIndex - 1;
      }
      _onCaretIndexChanged(newIndex);
      _onItemsChanged([..._items]..removeAt(newIndex));
    }
  }

  void _onItemsChanged(final List<LetterModel> items) {
    _items = items;
    setState(() {});
  }

  void _onControllerChange() => setState(() {});

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onControllerChange);
    _keyboardSubscription = context
        .read<UiKeyboardController>()
        .keyEventsStream
        .listen((final event) {
      switch (event) {
        case UiKeyboardEventAddCharacter(:final character):
          _onLetterPressed(character);
        case UiKeyboardEventRemoveCharacter():
          _onDelete();
      }
    });
  }

  bool _isKeyboardVisible = DeviceRuntimeType.isMobile || kDebugMode;
  @override
  void dispose() {
    _controller.removeListener(_onControllerChange);
    unawaited(_keyboardSubscription?.cancel());

    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    final wordCompositionState = context.read<WordCompositionCubit>();
    return InputKeyboardListener(
      focusNode: wordCompositionState.wordFocusNode,
      autofocus: false,
      caretIndex: _controller._caretIndex,
      onCaretIndexChanged: _onCaretIndexChanged,
      onCharacter: _onLetterPressed,
      onDelete: _onDelete,
      onComplete: () => UILevelCenterBar.onConfirmWord(context),

      /// container is needed to get focus
      child: Container(
        constraints: DeviceRuntimeType.isMobile
            ? null
            : const BoxConstraints(
                maxWidth: kKeyboardWidth,
              ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Row(
                children: [
                  Expanded(
                    child: CardFrostedBackground(
                      child: GameplayEditableText(
                        items: _items,
                        inactiveCharacters: _inactiveCharacters,
                        caretIndex: _controller._caretIndex,
                        onCaretIndexChanged: _onCaretIndexChanged,
                        onItemsChanged: _onItemsChanged,
                      ),
                    ),
                  ),
                  if (DeviceRuntimeType.isDesktop)
                    IconButton(
                      tooltip: _isKeyboardVisible
                          ? S.of(context).hideKeyboard
                          : S.of(context).showKeyboard,
                      onPressed: () {
                        _isKeyboardVisible = !_isKeyboardVisible;
                        setState(() {});
                      },
                      icon: AnimatedSwitcher(
                        duration: 250.milliseconds,
                        child: _isKeyboardVisible
                            ? const Icon(Icons.keyboard_hide)
                            : const Icon(Icons.keyboard_sharp),
                      ),
                    ),
                ],
              ),
            ),
            const Gap(10),
            if (_isKeyboardVisible)
              const UiKeyboard()
                  .animate()
                  .scaleXY(
                    curve: Curves.easeIn,
                    begin: 0.99,
                    end: 1,
                    alignment: Alignment.bottomCenter,
                  )
                  .fadeIn(
                    curve: Curves.easeIn,
                  ),
          ],
        ),
      ),
    );
  }
}

class ReorderableLetterCard extends StatelessWidget {
  const ReorderableLetterCard({
    required this.index,
    required this.letter,
    super.key,
  });
  final int index;
  final LetterModel letter;

  @override
  Widget build(final BuildContext context) => ReorderableDragStartListener(
        index: index,
        child: InputLetterCard(
          letter: letter,
        ),
      );
}

class InputInactiveLetterCard extends StatefulWidget {
  const InputInactiveLetterCard({
    required this.letter,
    super.key,
  });
  final LetterModel letter;

  @override
  State<InputInactiveLetterCard> createState() =>
      _InputInactiveLetterCardState();
}

class _InputInactiveLetterCardState extends State<InputInactiveLetterCard> {
  final _menuController = MenuController();
  late final _decreaseScore = context
      .read<MechanicsCollection>()
      .score
      .getDecreaseScore(lettersCount: 1);

  @override
  Widget build(final BuildContext context) => MenuAnchor(
        onClose: () => setState(() {}),
        alignmentOffset: const Offset(0, -110),
        style: const MenuStyle(
          alignment: Alignment.topCenter,
        ),
        controller: _menuController,
        menuChildren: [
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 120),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          // TODO(arenukvern): add l10n
                          'Unblock character for ${_decreaseScore.value / kScoreFactor * -1} points?',
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: _menuController.close,
                      child: const Text('No'),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Yes'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
        key: ValueKey(widget.letter),
        builder: (final context, final controller, final child) => UiBaseButton(
          onPressed: controller.open,
          child: Card(
            elevation: controller.isOpen ? 3 : 0,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Theme.of(context).colorScheme.outline,
              ),
              borderRadius: const BorderRadius.all(Radius.elliptical(4, 4)),
            ),
            margin: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 2,
            ),
            child: SizedBox.square(
              dimension: 24,
              child: Center(
                child: Text(widget.letter.title),
              ),
            ),
          ),
        ),
      );
}

class InputLetterCard extends StatelessWidget {
  const InputLetterCard({
    required this.letter,
    this.onPressed,
    super.key,
  });

  final VoidCallback? onPressed;
  final LetterModel letter;
  @override
  Widget build(final BuildContext context) => Container(
        alignment: Alignment.center,
        child: Text(
          letter.title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      );
}

class GameplayEditableText extends StatelessWidget {
  const GameplayEditableText({
    required this.items,
    required this.onItemsChanged,
    required this.inactiveCharacters,
    required this.onCaretIndexChanged,
    required this.caretIndex,
    super.key,
  });
  final List<LetterModel> items;
  final ValueChanged<List<LetterModel>> onItemsChanged;
  final int caretIndex;
  final List<LetterModel> inactiveCharacters;
  final ValueChanged<int> onCaretIndexChanged;

  // decoration:    InputDecoration.collapsed(
  //   hintText: S.of(context).username,
  // )
  @override
  Widget build(final BuildContext context) => Container(
        alignment: Alignment.center,
        height: 36,
        color: Colors.transparent,
        child: ReorderableListView.builder(
          scrollDirection: Axis.horizontal,
          buildDefaultDragHandles: false,
          itemCount: items.length + 1,
          shrinkWrap: true,
          proxyDecorator: (final child, final index, final animation) => child,
          padding: EdgeInsets.zero,
          itemBuilder: (final context, final index) {
            int i = index;
            if (i == caretIndex) {
              return ReorderableDragStartListener(
                key: const ValueKey('divider'),
                index: caretIndex,
                child: const InputCaret(),
              );
            } else if (i > caretIndex) {
              i--;
            }

            final letter = items[i];
            if (inactiveCharacters.contains(letter)) {
              return InputInactiveLetterCard(
                key: ValueKey(letter),
                letter: letter,
              );
            }
            return ReorderableLetterCard(
              key: ValueKey(letter),
              letter: letter,
              index: index,
            );
          },
          onReorder: (final eOldIndex, final eNewIndex) {
            var (oldIndex: oldIndex, newIndex: newIndex) =
                KeyboardReoderer.prepare(eNewIndex, eOldIndex);

            if (oldIndex == caretIndex) {
              onCaretIndexChanged(newIndex);
            } else {
              final values = KeyboardReoderer.onReorder(
                eOldIndex: oldIndex,
                eNewIndex: newIndex,
                eExceptionIndex: caretIndex,
              );
              oldIndex = values.oldIndex;
              newIndex = values.newIndex;
              onCaretIndexChanged(values.exceptionIndex);

              final updatedItems = [...items];
              final element = updatedItems.removeAt(values.oldIndex);
              updatedItems.insert(values.newIndex, element);

              onItemsChanged(updatedItems);
            }
          },
        ),
      );
}

class KeyboardReoderer {
  KeyboardReoderer._();
  static ({int oldIndex, int newIndex}) prepare(
    final int iNewIndex,
    final int oldIndex,
  ) {
    int newIndex = iNewIndex;
    if (oldIndex < newIndex) {
      // removing the item at oldIndex will shorten the list
      // by 1.
      newIndex -= 1;
    }
    return (oldIndex: oldIndex, newIndex: newIndex);
  }

  static ({int oldIndex, int newIndex, int exceptionIndex}) onReorder({
    required final int eOldIndex,
    required final int eNewIndex,
    required final int eExceptionIndex,
  }) {
    int oldIndex = eOldIndex;
    int newIndex = eNewIndex;
    int exceptionIndex = eExceptionIndex;

    if (oldIndex < exceptionIndex) {
      if (newIndex < exceptionIndex) {
        /// old - new - c
        // noop
      } else if (newIndex == exceptionIndex) {
        newIndex--;
        exceptionIndex--;
      } else {
        /// old - c - new
        newIndex--;
        exceptionIndex--;
      }
    } else if (oldIndex > exceptionIndex) {
      if (newIndex > exceptionIndex) {
        /// c - old - new
        // noop
        newIndex--;
        oldIndex--;
      } else if (newIndex == exceptionIndex) {
        /// new <-> c - old

        oldIndex--;
        exceptionIndex++;
      } else {
        oldIndex--;

        /// new - c - old
        exceptionIndex++;
      }
    }
    return (
      oldIndex: oldIndex,
      newIndex: newIndex,
      exceptionIndex: exceptionIndex,
    );
  }
}
