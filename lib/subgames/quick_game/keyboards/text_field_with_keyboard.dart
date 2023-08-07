import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboard_elements.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboard_models.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/word_field.dart';

/// use for any usual field
class TextFieldWithKeyboard extends StatefulWidget {
  const TextFieldWithKeyboard({
    required this.controller,
    this.autofocus = false,
    this.focusNode,
    this.decoration,
    super.key,
  });
  final FocusNode? focusNode;
  final bool autofocus;
  final TextEditingController controller;
  final InputDecoration? decoration;
  @override
  State<TextFieldWithKeyboard> createState() => _TextFieldWithKeyboardState();
}

class _TextFieldWithKeyboardState extends State<TextFieldWithKeyboard> {
  StreamSubscription<UiKeyboardEvent>? _keyboardSubscription;
  List<LetterModel> get _items => __items;
  set _items(final List<LetterModel> items) {
    __items = items;
    widget.controller.text = items.map((final item) => item.title).join();
  }

  late List<LetterModel> __items = _getControllerChracters();
  int _caretIndex = 0;
  void _onCaretIndexChanged(final int index) {
    if (index > _items.length) return;
    if (index < 0) return;
    _caretIndex = index;
    setState(() {});
  }

  List<LetterModel> _getControllerChracters() {
    final text = widget.controller.text;
    return List.generate(
      text.length,
      (final index) => LetterModel(title: text[index]),
    );
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
    if (_caretIndex == 0) {
      if (_items.isNotEmpty) {
        _onItemsChanged([..._items]..removeAt(0));
      }
    } else {
      final newIndex = _caretIndex - 1;
      _onCaretIndexChanged(newIndex);
      _onItemsChanged([..._items]..removeAt(newIndex));
    }
  }

  void _onItemsChanged(final List<LetterModel> items) {
    _items = items;
    setState(() {});
  }

  final focusNode = FocusNode();
  @override
  void initState() {
    super.initState();

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
    unawaited(_keyboardSubscription?.cancel());
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    const inputHeight = 30.0;
    return InputKeyboardListener(
      focusNode: focusNode,
      caretIndex: _caretIndex,
      autofocus: widget.autofocus,
      onCaretIndexChanged: _onCaretIndexChanged,
      onCharacter: _onLetterPressed,
      onDelete: _onDelete,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: kKeyboardWidth,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            UiEditableText(
              items: _items,
              height: inputHeight,
              decoration: widget.decoration,
              caretIndex: _caretIndex,
              onCaretIndexChanged: _onCaretIndexChanged,
              onItemsChanged: _onItemsChanged,
            ),
            AnimatedBuilder(
              animation: focusNode,
              builder: (final context, final data) => Divider(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            const Gap(16),
            const UiKeyboard(),
          ],
        ),
      ),
    );
  }
}

class UiEditableText extends StatelessWidget {
  const UiEditableText({
    required this.items,
    required this.onItemsChanged,
    required this.onCaretIndexChanged,
    required this.caretIndex,
    required this.decoration,
    required this.height,
    super.key,
  });
  final InputDecoration? decoration;
  final List<LetterModel> items;
  final ValueChanged<List<LetterModel>> onItemsChanged;
  final int caretIndex;
  final ValueChanged<int> onCaretIndexChanged;
  final double height;
  @override
  Widget build(final BuildContext context) {
    final hintText = decoration?.hintText ?? '';
    return SizedBox(
      height: height,
      child: Stack(
        children: [
          if (hintText.isNotEmpty && items.isEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Text(
                    hintText,
                    style: TextStyle(
                      color: Theme.of(context)
                          .colorScheme
                          .secondary
                          .withOpacity(0.4),
                    ),
                  ),
                ),
              ],
            ),
          ReorderableListView.builder(
            scrollDirection: Axis.horizontal,
            buildDefaultDragHandles: false,
            itemCount: items.length + 1,
            proxyDecorator: (final child, final index, final animation) =>
                child,
            padding: const EdgeInsets.symmetric(horizontal: 8),
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
              return ReorderableLetterCard(
                key: ValueKey(letter),
                letter: letter,
                index: index,
              );
            },
            // ignore: prefer_final_parameters
            onReorder: (oldIndex, newIndex) {
              if (oldIndex < newIndex) {
                // removing the item at oldIndex will shorten the list
                // by 1.
                newIndex -= 1;
              }
              if (oldIndex == caretIndex) {
                onCaretIndexChanged(newIndex);
              } else {
                if (oldIndex < caretIndex) {
                  if (newIndex < caretIndex) {
                    /// old - new - c
                    // noop
                  } else if (newIndex == caretIndex) {
                    newIndex--;
                    onCaretIndexChanged(caretIndex - 1);
                  } else {
                    /// old - c - new
                    newIndex--;
                    onCaretIndexChanged(caretIndex - 1);
                  }
                } else if (oldIndex > caretIndex) {
                  if (newIndex > caretIndex) {
                    /// c - old - new
                    // noop
                    newIndex--;
                    oldIndex--;
                  } else if (newIndex == caretIndex) {
                    /// new <-> c - old

                    oldIndex--;
                    onCaretIndexChanged(caretIndex + 1);
                  } else {
                    oldIndex--;

                    /// new - c - old
                    onCaretIndexChanged(caretIndex + 1);
                  }
                }

                final updatedItems = [...items];
                final element = updatedItems.removeAt(oldIndex);
                updatedItems.insert(newIndex, element);

                onItemsChanged(updatedItems);
              }
            },
          ),
        ],
      ),
    );
  }
}
