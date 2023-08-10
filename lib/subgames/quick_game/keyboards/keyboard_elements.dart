import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboard_models.dart';

const kKeyboardWidth = 320.0;

class UiKeyboardController extends Cubit<UiKeyboardControllerState> {
  UiKeyboardController() : super(const UiKeyboardControllerState());

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
    super.key,
  });
  final FocusNode focusNode;
  final Widget child;
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
        onFocusChange: (final isFocused) {
          final controller = context.read<UiKeyboardController>();
          if (isFocused) {
            controller.showKeyboard();
          } else {
            controller.hideKeyboard();
          }
        },
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
              // TODO(arenukvern): description
              // onComplete();
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
    final controller = context.watch<UiKeyboardController>();
    final language = controller.state.language;
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
          children: [
            LanguageSwitcher(
              lettersCount: lettersCount,
              onChanged: onLanguageChanged,
              value: language,
            ),
            Expanded(
              flex: lettersCount,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
            DeleteLetterButton(
              onDelete: onDelete,
              lettersCount: lettersCount,
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
  Widget build(final BuildContext context) => Container(
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
            onPlay: (final controller) => controller.repeat(),
          )
          .fadeIn(duration: 300.milliseconds)
          .fadeOut(
            delay: 700.milliseconds,
            duration: 300.milliseconds,
          );
}

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({
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
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
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
          padding: const EdgeInsets.symmetric(vertical: 8),
          lettersCount: widget.lettersCount,
          title: const Icon(CupertinoIcons.arrow_left_square_fill),
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
  Widget build(final BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final (:margin, :padding) = () {
      final double margin;
      final double padding;
      if (WidthFormFactor.checkIsXs(size)) {
        margin = 2.0;
        padding = 1.0;
      } else {
        margin = 4.0;
        padding = 4.0;
      }
      return (margin: margin, padding: padding);
    }();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: margin),
      child: UiFilledButton(
        onPressed: onPressed,
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: padding),
        child: title,
      ),
    );
  }
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
  Widget build(final BuildContext context) => Material(
        type: MaterialType.button,
        color: Theme.of(context).dialogBackgroundColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(4, 4)),
        ),
        surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
        elevation: 1,
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.elliptical(4, 4)),
          onTap: onPressed,
          onLongPress: onLongPress,
          child: Container(
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
  Widget build(final BuildContext context) => Material(
        type: MaterialType.button,
        elevation: 1,
        color: Theme.of(context).colorScheme.secondaryContainer,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.elliptical(4, 4)),
        ),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.elliptical(4, 4)),
          onTap: onPressed,
          child: Container(
            alignment: Alignment.center,
            padding: padding,
            child: child,
          ),
        ),
      );
}
