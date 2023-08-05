import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';

const kKeyboardWidth = 320.0;

class MobileKeyboard extends StatefulWidget {
  const MobileKeyboard({super.key});
  @override
  State<MobileKeyboard> createState() => _MobileKeyboardState();
}

class _MobileKeyboardState extends State<MobileKeyboard> {
  final enLetters = [
    ['q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p'],
    ['a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l'],
    ['z', 'x', 'c', 'v', 'b', 'n', 'm']
  ];
  final ruLetters = [
    ['й', 'ц', 'у', 'к', 'е', 'н', 'г', 'ш', 'щ', 'з', 'х'],
    ['ф', 'ы', 'в', 'а', 'п', 'р', 'о', 'л', 'д', 'ж', 'э'],
    ['я', 'ч', 'с', 'м', 'и', 'т', 'ь', 'б', 'ю']
  ];

  final GlobalKey _draggableKey = GlobalKey();
  List<LetterModel> _items = [];
  int _cursorIndex = 0;
  List<int> _inactiveLettersIndexes = [3, 4, 5];
  @override
  Widget build(final BuildContext context) => SizedBox(
        width: kKeyboardWidth,
        height: 320,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TargetRow(
              inactiveIndexes: _inactiveLettersIndexes,
              draggableKey: _draggableKey,
              items: _items,
              cursorIndex: _cursorIndex,
              onChangeInactiveIndexes: (final indexes) {
                _inactiveLettersIndexes = indexes;
                setState(() {});
              },
              onCursorIndexChanged: (final index) {
                _cursorIndex = index;
                setState(() {});
              },
              onItemsChanged: (final items) {
                _items = items;
                setState(() {});
              },
            ),
            const Gap(12),
            KeyboardLetters(
              cursorIndex: _cursorIndex,
              items: _items,
              onItemsChanged: (final items) {
                _items = items;
                setState(() {});
              },
              onCursorIndexChanged: (final index) {
                _cursorIndex = index;
                setState(() {});
              },
              draggableKey: _draggableKey,
              rows: enLetters,
              onLetterPressed: (final letter) {
                _items.insert(_cursorIndex, LetterModel(title: letter));
                _cursorIndex++;
                setState(() {});
              },
            ),
          ],
        ),
      );
}

class KeyboardLetters extends StatelessWidget {
  const KeyboardLetters({
    required this.draggableKey,
    required this.rows,
    required this.onLetterPressed,
    required this.cursorIndex,
    required this.items,
    required this.onItemsChanged,
    required this.onCursorIndexChanged,
    super.key,
  });
  final List<List<String>> rows;
  final ValueChanged<String> onLetterPressed;
  final GlobalKey draggableKey;
  final int cursorIndex;
  final ValueChanged<int> onCursorIndexChanged;
  final ValueChanged<List<LetterModel>> onItemsChanged;
  final List<LetterModel> items;
  @override
  Widget build(final BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: rows.first
                .map(
                  (final e) => KeyboardLetterCard(
                    draggableKey: draggableKey,
                    letter: LetterModel(
                      title: e,
                    ),
                    onPressed: () => onLetterPressed(e),
                  ),
                )
                .toList(),
          ),
          const Gap(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (final e in rows[1])
                KeyboardLetterCard(
                  draggableKey: draggableKey,
                  letter: LetterModel(
                    title: e,
                  ),
                  onPressed: () => onLetterPressed(e),
                ),
            ],
          ),
          const Gap(5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (final e in rows[2])
                KeyboardLetterCard(
                  draggableKey: draggableKey,
                  letter: LetterModel(title: e),
                  onPressed: () => onLetterPressed(e),
                ),
              DeleteLetterButton(
                cursorIndex: cursorIndex,
                items: items,
                onCursorIndexChanged: onCursorIndexChanged,
                onItemsChanged: onItemsChanged,
              )
            ],
          ),
        ],
      );
}

class DeleteLetterButton extends StatefulWidget {
  const DeleteLetterButton({
    required this.cursorIndex,
    required this.items,
    required this.onItemsChanged,
    required this.onCursorIndexChanged,
    super.key,
  });
  final int cursorIndex;
  final ValueChanged<int> onCursorIndexChanged;
  final ValueChanged<List<LetterModel>> onItemsChanged;
  final List<LetterModel> items;

  @override
  State<DeleteLetterButton> createState() => _DeleteLetterButtonState();
}

class _DeleteLetterButtonState extends State<DeleteLetterButton> {
  void _onRemove() {
    if (widget.items.isEmpty) return;
    if (widget.cursorIndex == 0) {
      if (widget.items.isNotEmpty) {
        widget.onItemsChanged([...widget.items]..removeAt(0));
      }
    } else {
      final newIndex = widget.cursorIndex - 1;
      widget.onCursorIndexChanged(newIndex);
      widget.onItemsChanged([...widget.items]..removeAt(newIndex));
    }
  }

  bool _isLongPressed = false;
  @override
  Widget build(final BuildContext context) => GestureDetector(
        onLongPress: () async {
          await Future.delayed(200.milliseconds);
          while (_isLongPressed) {
            await Future.delayed(100.milliseconds);
            if (!_isLongPressed) break;
            _onRemove();
          }
        },
        onLongPressStart: (final _) async {
          _isLongPressed = true;
        },
        onLongPressEnd: (final _) {
          _isLongPressed = false;
        },
        onLongPressCancel: () {
          _isLongPressed = false;
        },
        child: IconButton(
          onPressed: _onRemove,
          icon: const Icon(CupertinoIcons.arrow_left_square_fill),
        ),
      );
}

class KeyboardLetterCard extends StatelessWidget {
  const KeyboardLetterCard({
    required this.draggableKey,
    required this.letter,
    required this.onPressed,
    super.key,
  });
  final GlobalKey draggableKey;
  final LetterModel letter;
  final VoidCallback onPressed;
  @override
  Widget build(final BuildContext context) => LetterCard(
        letter: letter,
        onPressed: onPressed,
      );
}

class ReorderableLetterCard extends StatelessWidget {
  const ReorderableLetterCard({
    required this.index,
    required this.letter,
    required this.draggableKey,
    super.key,
  });
  final int index;
  final LetterModel letter;
  final GlobalKey draggableKey;

  @override
  Widget build(final BuildContext context) => ReorderableDragStartListener(
        index: index,
        child: InputLetterCard(
          letter: letter,
        ),
      );
}

class DraggingListItem extends StatelessWidget {
  const DraggingListItem({
    required this.dragKey,
    required this.letter,
    super.key,
  });
  final GlobalKey dragKey;
  final LetterModel letter;
  @override
  Widget build(final BuildContext context) => LetterCard(
        letter: letter,
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
  Widget build(final BuildContext context) => Align(
        child: Card(
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
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

class LetterCard extends StatelessWidget {
  const LetterCard({
    required this.letter,
    this.onPressed,
    super.key,
  });
  final VoidCallback? onPressed;
  final LetterModel letter;
  @override
  Widget build(final BuildContext context) {
    const width = (kKeyboardWidth - 24 - (10 * 2)) / 10;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: FilledButton.tonal(
        onPressed: onPressed ?? () {},
        style: const ButtonStyle(
          fixedSize: MaterialStatePropertyAll(
            Size(
              width,
              36,
            ),
          ),
          enableFeedback: true,
          elevation: MaterialStatePropertyAll(1),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(4, 4)),
            ),
          ),
          padding: MaterialStatePropertyAll(
            EdgeInsets.zero,
          ),
          minimumSize: MaterialStatePropertyAll(Size.zero),
          alignment: Alignment.center,
        ),
        child: Text(letter.title),
      ),
    );
  }
}

class LetterModel {
  LetterModel({
    required this.title,
  }) : id = IdCreator.create();
  final String id;
  final String title;
}

class TargetRow extends StatelessWidget {
  const TargetRow({
    required this.draggableKey,
    required this.items,
    required this.onItemsChanged,
    required this.onCursorIndexChanged,
    required this.cursorIndex,
    required this.inactiveIndexes,
    required this.onChangeInactiveIndexes,
    super.key,
  });
  final List<LetterModel> items;
  final ValueChanged<List<LetterModel>> onItemsChanged;
  final int cursorIndex;
  final ValueChanged<int> onCursorIndexChanged;
  final GlobalKey draggableKey;
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
                      if (i == cursorIndex) {
                        return ReorderableDragStartListener(
                          key: const ValueKey('divider'),
                          index: cursorIndex,
                          child: Container(
                            width: 14,
                            color: Colors.transparent,
                            child: const VerticalDivider(
                              thickness: 4,
                              width: 4,
                            ),
                          )
                              .animate(
                                onPlay: (final controller) =>
                                    controller.repeat(),
                              )
                              .fadeIn(duration: 600.milliseconds)
                              .fadeOut(
                                delay: 350.milliseconds,
                                duration: 600.milliseconds,
                              ),
                        );
                      } else if (i > cursorIndex) {
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
                        draggableKey: draggableKey,
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
                      if (oldIndex == cursorIndex) {
                        onCursorIndexChanged(newIndex);
                      } else {
                        if (oldIndex < cursorIndex) {
                          if (newIndex < cursorIndex) {
                            /// old - new - c
                            // noop
                          } else if (newIndex == cursorIndex) {
                            newIndex--;
                            onCursorIndexChanged(cursorIndex - 1);
                          } else {
                            /// old - c - new
                            newIndex--;
                            onCursorIndexChanged(cursorIndex - 1);
                          }
                        } else if (oldIndex > cursorIndex) {
                          if (newIndex > cursorIndex) {
                            /// c - old - new
                            // noop
                            newIndex--;
                            oldIndex--;
                          } else if (newIndex == cursorIndex) {
                            /// new <-> c - old

                            oldIndex--;
                            onCursorIndexChanged(cursorIndex + 1);
                          } else {
                            oldIndex--;

                            /// new - c - old
                            onCursorIndexChanged(cursorIndex + 1);
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
