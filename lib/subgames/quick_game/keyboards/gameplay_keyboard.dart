import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboard_elements.dart';

class GameplayKeyboard extends StatefulWidget {
  const GameplayKeyboard({super.key});
  @override
  State<GameplayKeyboard> createState() => _GameplayKeyboardState();
}

class _GameplayKeyboardState extends State<GameplayKeyboard> {
  KeyboardLanguage _language = KeyboardLanguage.en;
  List<LetterModel> _items = [];
  int _caretIndex = 0;
  List<int> _inactiveLettersIndexes = [3, 4, 5];
  void _onCaretIndexChanged(final int index) {
    if (index > _items.length) return;
    if (index < 0) return;
    _caretIndex = index;
    setState(() {});
  }

  void _onLetterPressed(final String letter) {
    _items.insert(_caretIndex, LetterModel(title: letter));
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
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => InputKeyboardListener(
        focusNode: focusNode,
        caretIndex: _caretIndex,
        onCaretIndexChanged: _onCaretIndexChanged,
        onCharacter: _onLetterPressed,
        onDelete: _onDelete,
        child: SizedBox(
          width: kKeyboardWidth,
          height: 320,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (kDebugMode)
                AnimatedBuilder(
                  animation: focusNode,
                  builder: (final context, final data) =>
                      Text('is focused: ${focusNode.hasFocus}'),
                ),
              GameplayEditableText(
                inactiveIndexes: _inactiveLettersIndexes,
                items: _items,
                caretIndex: _caretIndex,
                onChangeInactiveIndexes: (final indexes) {
                  _inactiveLettersIndexes = indexes;
                  setState(() {});
                },
                onCaretIndexChanged: _onCaretIndexChanged,
                onItemsChanged: _onItemsChanged,
              ),
              const Gap(12),
              KeyboardLetters(
                caretIndex: _caretIndex,
                items: _items,
                onDelete: _onDelete,
                language: _language,
                onLanguageChanged: (final lang) {
                  _language = lang;
                  setState(() {});
                },
                onItemsChanged: (final items) {
                  _items = items;
                  setState(() {});
                },
                onCaretIndexChanged: (final index) {
                  _caretIndex = index;
                  setState(() {});
                },
                rows: _language.letters,
                onLetterPressed: _onLetterPressed,
              ),
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
    required this.onCaretIndexChanged,
    required this.caretIndex,
    required this.inactiveIndexes,
    required this.onChangeInactiveIndexes,
    super.key,
  });
  final List<LetterModel> items;
  final ValueChanged<List<LetterModel>> onItemsChanged;
  final int caretIndex;
  final ValueChanged<int> onCaretIndexChanged;
  final List<int> inactiveIndexes;
  final ValueChanged<List<int>> onChangeInactiveIndexes;

  @override
  Widget build(final BuildContext context) => Row(
        children: [
          Expanded(
            child: DragTarget<LetterModel>(
              onAccept: (final data) {
                onItemsChanged([...items, LetterModel(title: data.title)]);
              },
              builder:
                  (final context, final candidateItems, final rejectedItems) =>
                      Container(
                color: candidateItems.isNotEmpty ? Colors.red : null,
                child: SizedBox(
                  height: 36,
                  child: ReorderableListView.builder(
                    scrollDirection: Axis.horizontal,
                    buildDefaultDragHandles: false,
                    itemCount: items.length + 1,
                    proxyDecorator:
                        (final child, final index, final animation) => child,
                    padding: const EdgeInsets.only(left: 16, right: 8),
                    itemBuilder: (final context, final index) {
                      int i = index;
                      if (i == caretIndex) {
                        return ReorderableDragStartListener(
                          key: const ValueKey('divider'),
                          index: caretIndex,
                          child: Container(
                            width: 14,
                            color: Colors.transparent,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer
                                    .withOpacity(0.8),
                                borderRadius: const BorderRadius.all(
                                  Radius.elliptical(4, 4),
                                ),
                              ),
                              height: double.maxFinite,
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              width: 4,
                            ),
                          )
                              .animate(
                                onPlay: (final controller) =>
                                    controller.repeat(),
                              )
                              .fadeIn(duration: 300.milliseconds)
                              .fadeOut(
                                delay: 700.milliseconds,
                                duration: 300.milliseconds,
                              ),
                        );
                      } else if (i > caretIndex) {
                        i--;
                      }
                      final letter = items[i];
                      if (inactiveIndexes.contains(i)) {
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
                    // TODO(antmalofeev): add inactive indexes handling
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
                ),
              ),
            ),
          ),
        ],
      );
}
