import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboard_models.dart';

const kKeyboardWidth = 360.0;

class UiKeyboardController extends Cubit<UiKeyboardControllerState> {
  // ignore: avoid_unused_constructor_parameters
  UiKeyboardController(final BuildContext context)
      : super(const UiKeyboardControllerState());

  final _controller = StreamController<UiKeyboardEvent>.broadcast();
  Stream<UiKeyboardEvent> get keyEventsStream => _controller.stream;

  void onChangeLanguage(final KeyboardLanguage language) {
    emit(state.copyWith(language: language));
  }

  void onDeleteCharacter() =>
      _controller.add(const UiKeyboardEvent.removeCharacter());
  void onAddCharacter(final String character) => _controller.add(
        UiKeyboardEvent.addCharacter(character: character),
      );

  void showKeyboard() {
    emit(state.copyWith(isVisible: true));
  }

  void hideKeyboard() {
    emit(state.copyWith(isVisible: false));
  }

  @override
  Future<void> close() async {
    await _controller.close();
    return super.close();
  }
}

enum KeyboardDirection { left, right }

class InputKeyboardListener extends StatelessWidget {
  const InputKeyboardListener({
    required this.child,
    required this.caretIndex,
    required this.onCaretIndexChanged,
    required this.focusNode,
    required this.onCharacter,
    required this.onDelete,
    required this.autofocus,
    this.onComplete,
    super.key,
  });
  final FocusNode focusNode;
  final Widget child;
  final VoidCallback? onComplete;
  final bool autofocus;
  final int caretIndex;
  final void Function(
    int, {
    KeyboardDirection direction,
  }) onCaretIndexChanged;
  final ValueSetter<String> onCharacter;
  final VoidCallback onDelete;

  @override
  Widget build(final BuildContext context) => Focus(
        autofocus: autofocus,
        onKeyEvent: (final node, final event) {
          if (event is KeyUpEvent) return KeyEventResult.handled;

          switch (event.logicalKey) {
            case LogicalKeyboardKey.arrowLeft:
              onCaretIndexChanged(
                caretIndex - 1,
                direction: KeyboardDirection.left,
              );
              return KeyEventResult.handled;
            case LogicalKeyboardKey.arrowRight:
              onCaretIndexChanged(
                caretIndex + 1,
                direction: KeyboardDirection.right,
              );
              return KeyEventResult.handled;
            case LogicalKeyboardKey.delete || LogicalKeyboardKey.backspace:
              onDelete();
              return KeyEventResult.handled;
            case LogicalKeyboardKey.enter:
              onComplete?.call();
              return KeyEventResult.handled;
            case LogicalKeyboardKey.space:
              return KeyEventResult.handled;
          }
          final character = event.character;
          if (character != null && character.isNotEmpty) {
            onCharacter(character);
          }
          return KeyEventResult.handled;
        },
        focusNode: focusNode,
        child: GestureDetector(
          onTap: focusNode.requestFocus,
          child: child,
        ),
      );
}

class UiKeyboard extends StatelessWidget {
  const UiKeyboard({super.key});

  @override
  Widget build(final BuildContext context) {
    final controller = context.read<UiKeyboardController>();
    final language = context.select<UiKeyboardController, KeyboardLanguage>(
      (final cubit) => cubit.state.language,
    );
    return KeyboardLetters(
      language: language,
      onDelete: controller.onDeleteCharacter,
      onLanguageChanged: controller.onChangeLanguage,
      onLetterPressed: controller.onAddCharacter,
      rows: language.letters,
    );
  }
}

class KeyboardLetters extends StatelessWidget {
  const KeyboardLetters({
    required this.rows,
    required this.onLetterPressed,
    required this.onDelete,
    required this.language,
    required this.onLanguageChanged,
    super.key,
  });
  final List<List<String>> rows;
  final ValueChanged<String> onLetterPressed;
  final VoidCallback onDelete;
  final KeyboardLanguage language;
  final ValueChanged<KeyboardLanguage> onLanguageChanged;
  @override
  Widget build(final BuildContext context) {
    final firstRow = rows.first;
    final lettersCount = firstRow.length;
    const maxLetterWidth = 36.0;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: firstRow
              .map(
                (final e) => Flexible(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: maxLetterWidth,
                    ),
                    child: LetterCard(
                      lettersCount: lettersCount,
                      letter: LetterModel(
                        title: e,
                      ),
                      onPressed: () => onLetterPressed(e),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        const Gap(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (final e in rows[1])
              Flexible(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: maxLetterWidth,
                  ),
                  child: LetterCard(
                    lettersCount: lettersCount,
                    letter: LetterModel(
                      title: e,
                    ),
                    onPressed: () => onLetterPressed(e),
                  ),
                ),
              ),
          ],
        ),
        const Gap(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            KeyboardLanguageSwitcher(
              lettersCount: lettersCount,
              onChanged: onLanguageChanged,
              value: language,
            ),
            Flexible(
              flex: lettersCount,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (final e in rows[2])
                    Flexible(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: maxLetterWidth,
                        ),
                        child: LetterCard(
                          lettersCount: lettersCount,
                          letter: LetterModel(title: e),
                          onPressed: () => onLetterPressed(e),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 40),
              child: DeleteLetterButton(
                onDelete: onDelete,
                lettersCount: lettersCount,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class InputCaret extends StatelessWidget {
  const InputCaret({super.key});

  @override
  Widget build(final BuildContext context) {
    final focusNode = Focus.of(context);
    final color = Theme.of(context).colorScheme.onPrimaryContainer;
    final isFocused = focusNode.hasFocus || focusNode.hasPrimaryFocus;

    return AnimatedContainer(
      duration: 250.milliseconds,
      width: isFocused ? 14 : 1,
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: isFocused ? color.withOpacity(0.8) : Colors.transparent,
          borderRadius: const BorderRadius.all(Radius.elliptical(4, 4)),
        ),
        height: double.maxFinite,
        margin: const EdgeInsets.symmetric(horizontal: 4),
        width: isFocused ? 4 : 1,
      ),
    )
        .animate(
          onPlay: (final controller) => controller.repeat(),
        )
        .fadeIn(duration: 300.milliseconds)
        .fadeOut(
          delay: 700.milliseconds,
          duration: 300.milliseconds,
        );
  }
}

class KeyboardLanguageSwitcher extends StatelessWidget {
  const KeyboardLanguageSwitcher({
    required this.onChanged,
    required this.value,
    required this.lettersCount,
    super.key,
  });
  final KeyboardLanguage value;
  final ValueChanged<KeyboardLanguage> onChanged;
  final int lettersCount;
  @override
  Widget build(final BuildContext context) => MenuAnchor(
        builder: (final context, final controller, final child) =>
            OutlinedKeyboardElement(
          lettersCount: lettersCount,
          onLongPress: controller.open,
          onPressed: () => onChanged(value.next()),
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 2),
          title: const Icon(CupertinoIcons.globe),
        ),
        menuChildren: KeyboardLanguage.values
            .map(
              (final e) => MenuItemButton(
                child: Text(e.name),
                onPressed: () => onChanged(e),
              ),
            )
            .toList(),
      );
}

class DeleteLetterButton extends StatefulWidget {
  const DeleteLetterButton({
    required this.lettersCount,
    required this.onDelete,
    super.key,
  });
  final int lettersCount;
  final VoidCallback onDelete;
  @override
  State<DeleteLetterButton> createState() => _DeleteLetterButtonState();
}

class _DeleteLetterButtonState extends State<DeleteLetterButton> {
  bool _isLongPressed = false;
  @override
  Widget build(final BuildContext context) => GestureDetector(
        onLongPress: () async {
          await Future.delayed(200.milliseconds);
          while (_isLongPressed) {
            await Future.delayed(100.milliseconds);
            if (!_isLongPressed) break;
            widget.onDelete();
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
        child: OutlinedKeyboardElement(
          onPressed: widget.onDelete,
          padding: const EdgeInsets.symmetric(vertical: 6),
          lettersCount: widget.lettersCount,
          title: const Icon(CupertinoIcons.delete_left),
        ),
      );
}

class OutlinedKeyboardElement extends StatelessWidget {
  const OutlinedKeyboardElement({
    required this.title,
    required this.lettersCount,
    this.onPressed,
    this.onLongPress,
    this.padding = const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
    super.key,
  });
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final Widget title;
  final int lettersCount;
  final EdgeInsets padding;
  @override
  Widget build(final BuildContext context) => Padding(
        /// margin
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: UiElevatedButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          padding: padding,
          child: title,
        ),
      );
}

class LetterCard extends StatelessWidget {
  const LetterCard({
    required this.letter,
    this.lettersCount = 10,
    this.onPressed,
    super.key,
  });
  final VoidCallback? onPressed;
  final LetterModel letter;
  final int lettersCount;
  @override
  Widget build(final BuildContext context) => FilledKeyboardElement(
        lettersCount: lettersCount,
        title: Text(letter.title),
        onPressed: onPressed,
      );
}

class FilledKeyboardElement extends StatelessWidget {
  const FilledKeyboardElement({
    required this.title,
    required this.lettersCount,
    required this.onPressed,
    super.key,
  });
  final VoidCallback? onPressed;
  final Widget title;
  final int lettersCount;
  @override
  Widget build(final BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2),
        child: UiFilledButton(
          onPressed: onPressed,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 1),
          child: title,
        ),
      );
}

class UiElevatedButton extends StatelessWidget {
  const UiElevatedButton({
    required this.child,
    this.onPressed,
    this.onLongPress,
    this.padding = const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
    super.key,
  });
  final Widget child;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final EdgeInsets padding;

  @override
  Widget build(final BuildContext context) => UiBaseButton(
        onPressed: onPressed,
        onLongPress: onLongPress,
        child: Container(
          decoration: ShapeDecoration(
            color: Theme.of(context).dialogBackgroundColor.withOpacity(0.8),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(4, 4)),
            ),
          ),
          alignment: Alignment.center,
          padding: padding,
          child: IconTheme(
            data: IconThemeData(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: DefaultTextStyle.merge(
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
              child: child,
            ),
          ),
        ),
      );
}

class UiFilledButton extends StatelessWidget {
  const UiFilledButton({
    required this.child,
    required this.onPressed,
    this.padding = const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
    super.key,
  });
  final Widget child;
  final EdgeInsets padding;
  final VoidCallback? onPressed;
  @override
  Widget build(final BuildContext context) => UiBaseButton(
        onPressed: onPressed,
        child: Container(
          decoration: ShapeDecoration(
            color: Theme.of(context)
                .colorScheme
                .secondaryContainer
                .withOpacity(0.85),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(4, 4)),
            ),
          ),
          alignment: Alignment.center,
          padding: padding,
          child: child,
        ),
      );
}
