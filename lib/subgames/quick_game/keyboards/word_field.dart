import 'dart:async';
import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboard_elements.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboard_models.dart';

class WordFieldController extends ChangeNotifier {
  WordFieldController({
    required final CurrentWordModel currentWord,
  }) {
    split(
      inactiveIndexes: currentWord.inactiveIndexes,
      text: currentWord.fullWord,
    );
  }
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
    required this.focusNode,
    super.key,
  });
  final WordFieldController controller;
  final FocusNode focusNode;
  @override
  State<WordField> createState() => _WordFieldState();
}

class _WordFieldState extends State<WordField> {
  UnmodifiableListView<LetterModel> get _inactiveCharacters =>
      UnmodifiableListView(widget.controller.inactiveCharacters);
  set _inactiveCharacters(final List<LetterModel> values) {
    widget.controller.inactiveCharacters = values;
    setState(() {});
  }

  StreamSubscription<UiKeyboardEvent>? _keyboardSubscription;
  UnmodifiableListView<LetterModel> get _items => widget.controller.items;
  set _items(final List<LetterModel> values) {
    widget.controller.items = values;
  }

  int _caretIndex = 0;
  void _onCaretIndexChanged(
    final int eNewIndex, {
    final KeyboardDirection direction = KeyboardDirection.right,
  }) {
    final int newIndex = eNewIndex;
    if (newIndex > _items.length) return;
    if (newIndex < 0) return;
    _caretIndex = _protectCaretIndex(direction: direction, newIndex: newIndex);
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
      [..._items]..insert(_caretIndex, LetterModel(title: letter)),
    );
    _caretIndex++;
    setState(() {});
  }

  void _onDelete() {
    if (_items.isEmpty) return;
    if (_items.length == _inactiveCharacters.length) return;
    if (_caretIndex == 0) {
      if (_items.isNotEmpty) {
        _onItemsChanged([..._items]..removeAt(0));
      }
    } else {
      final initialNewIndex = _caretIndex - 1;
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
    widget.controller.addListener(_onControllerChange);
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

  @override
  void dispose() {
    widget.controller.removeListener(_onControllerChange);
    unawaited(_keyboardSubscription?.cancel());

    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => InputKeyboardListener(
        focusNode: widget.focusNode,
        autofocus: false,
        caretIndex: _caretIndex,
        onCaretIndexChanged: _onCaretIndexChanged,
        onCharacter: _onLetterPressed,
        onDelete: _onDelete,
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: kKeyboardWidth,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (kDebugMode)
                AnimatedBuilder(
                  animation: widget.focusNode,
                  builder: (final context, final data) =>
                      Text('is focused: ${widget.focusNode.hasFocus}'),
                ),
              GameplayEditableText(
                items: _items,
                inactiveCharacters: _inactiveCharacters,
                caretIndex: _caretIndex,
                onCaretIndexChanged: _onCaretIndexChanged,
                onItemsChanged: _onItemsChanged,
              ),
              const Gap(16),
              const UiKeyboard(),
            ],
          ),
        ),
      );
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

class InputInactiveLetterCard extends StatelessWidget {
  const InputInactiveLetterCard({
    required this.letter,
    this.onPressed,
    super.key,
  });

  final VoidCallback? onPressed;
  final LetterModel letter;
  @override
  Widget build(final BuildContext context) => Card(
        elevation: 0,
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
            child: Text(letter.title),
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
        child: Text(letter.title),
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
