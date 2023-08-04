import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:wbw_core/wbw_core.dart';

class MobileKeyboard extends StatefulWidget {
  const MobileKeyboard({super.key});
  @override
  State<MobileKeyboard> createState() => _MobileKeyboardState();
}

class _MobileKeyboardState extends State<MobileKeyboard> {
  final GlobalKey _draggableKey = GlobalKey();
  List<LetterModel> _items = [];
  int _cursorIndex = 0;
  @override
  Widget build(final BuildContext context) => SizedBox(
        width: 320,
        height: 320,
        child: Column(
          children: [
            TargetRow(
              draggableKey: _draggableKey,
              items: _items,
              cursorIndex: _cursorIndex,
              onCursorIndexChanged: (final index) {
                _cursorIndex = index;
                setState(() {});
              },
              onItemsChanged: (final items) {
                _items = items;
                setState(() {});
              },
            ),
            Wrap(
              children:
                  // ignore: lines_longer_than_80_chars
                  'A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z'
                      .split(',')
                      .map(
                        (final e) => KeyboardLetterCard(
                          draggableKey: _draggableKey,
                          letter: LetterModel(
                            title: e,
                          ),
                          onPressed: () {
                            _items.insert(_cursorIndex, LetterModel(title: e));
                            _cursorIndex++;
                            setState(() {});
                          },
                        ),
                      )
                      .toList(),
            ),
          ],
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
  Widget build(final BuildContext context) =>
      // Draggable(
      ReorderableDragStartListener(
        index: index,
        child: LetterCard(
          letter: letter,
        ),
      )
      //   dragAnchorStrategy: pointerDragAnchorStrategy,
      //   feedback: DraggingListItem(
      //     dragKey: draggableKey,
      //     letter: letter,
      //   ),
      //   child: ,
      // )
      ;
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

class LetterCard extends StatelessWidget {
  const LetterCard({
    required this.letter,
    this.onPressed,
    super.key,
  });
  final VoidCallback? onPressed;
  final LetterModel letter;
  @override
  Widget build(final BuildContext context) => FilledButton.tonal(
        onPressed: onPressed ?? () {},
        style: const ButtonStyle(
          padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          ),
          minimumSize: MaterialStatePropertyAll(Size.zero),
          alignment: Alignment.center,
        ),
        child: Text(letter.title),
      );
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
    super.key,
  });
  final List<LetterModel> items;
  final ValueChanged<List<LetterModel>> onItemsChanged;
  final int cursorIndex;
  final ValueChanged<int> onCursorIndexChanged;
  final GlobalKey draggableKey;

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
                      return ReorderableLetterCard(
                        key: ValueKey(letter),
                        letter: letter,
                        index: index,
                        draggableKey: draggableKey,
                      );
                    },
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
          IconButton(
            onPressed: () {
              if (items.isEmpty) return;
              if (cursorIndex == 0) {
                if (items.isNotEmpty) {
                  onItemsChanged([...items]..removeAt(0));
                }
              } else {
                final newIndex = cursorIndex - 1;
                onCursorIndexChanged(newIndex);
                onItemsChanged([...items]..removeAt(newIndex));
              }
            },
            icon: const Icon(CupertinoIcons.arrow_left_square_fill),
          )
        ],
      );
}
