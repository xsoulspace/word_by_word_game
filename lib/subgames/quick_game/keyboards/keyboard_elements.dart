import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';

const kKeyboardWidth = 320.0;

enum KeyboardLanguage {
  en,
  ru;

  static const enLetters = [
    ['q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p'],
    ['a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l'],
    ['z', 'x', 'c', 'v', 'b', 'n', 'm'],
  ];
  static const ruLetters = [
    ['й', 'ц', 'у', 'к', 'е', 'н', 'г', 'ш', 'щ', 'з', 'х'],
    ['ф', 'ы', 'в', 'а', 'п', 'р', 'о', 'л', 'д', 'ж', 'э'],
    ['я', 'ч', 'с', 'м', 'и', 'т', 'ь', 'б', 'ю']
  ];

  List<List<String>> get letters => switch (this) {
        KeyboardLanguage.en => enLetters,
        KeyboardLanguage.ru => ruLetters,
      };
}

class InputKeyboardListener extends StatelessWidget {
  const InputKeyboardListener({
    required this.child,
    required this.caretIndex,
    required this.onCaretIndexChanged,
    required this.focusNode,
    required this.onCharacter,
    required this.onDelete,
    super.key,
  });
  final FocusNode focusNode;
  final Widget child;
  final int caretIndex;
  final ValueChanged<int> onCaretIndexChanged;
  final ValueSetter<String> onCharacter;
  final VoidCallback onDelete;

  @override
  Widget build(final BuildContext context) => Focus(
        onKeyEvent: (final node, final event) {
          if (event is KeyUpEvent) return KeyEventResult.handled;

          switch (event.logicalKey) {
            case LogicalKeyboardKey.arrowLeft:
              onCaretIndexChanged(caretIndex - 1);
              return KeyEventResult.handled;
            case LogicalKeyboardKey.arrowRight:
              onCaretIndexChanged(caretIndex + 1);
              return KeyEventResult.handled;
            case LogicalKeyboardKey.delete || LogicalKeyboardKey.backspace:
              onDelete();
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

class KeyboardLetters extends StatelessWidget {
  const KeyboardLetters({
    required this.rows,
    required this.onLetterPressed,
    required this.caretIndex,
    required this.onDelete,
    required this.items,
    required this.onItemsChanged,
    required this.onCaretIndexChanged,
    required this.language,
    required this.onLanguageChanged,
    super.key,
  });
  final List<List<String>> rows;
  final ValueChanged<String> onLetterPressed;
  final int caretIndex;
  final ValueChanged<int> onCaretIndexChanged;
  final ValueChanged<List<LetterModel>> onItemsChanged;
  final List<LetterModel> items;
  final VoidCallback onDelete;
  final KeyboardLanguage language;
  final ValueChanged<KeyboardLanguage> onLanguageChanged;
  @override
  Widget build(final BuildContext context) {
    final firstRow = rows.first;
    final lettersCount = firstRow.length;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: firstRow
              .map(
                (final e) => LetterCard(
                  lettersCount: lettersCount,
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
              LetterCard(
                lettersCount: lettersCount,
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
            LanguageSwitcher(
              lettersCount: lettersCount,
              onChanged: onLanguageChanged,
              value: language,
            ),
            const Spacer(),
            for (final e in rows[2])
              LetterCard(
                lettersCount: lettersCount,
                letter: LetterModel(title: e),
                onPressed: () => onLetterPressed(e),
              ),
            const Spacer(),
            DeleteLetterButton(
              onDelete: onDelete,
              lettersCount: lettersCount,
            )
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
          onPressed: controller.open,
          title: Text(value.name),
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
          lettersCount: widget.lettersCount,
          title: const Icon(CupertinoIcons.arrow_left_square_fill),
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

class OutlinedKeyboardElement extends StatelessWidget {
  const OutlinedKeyboardElement({
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
    final width = (kKeyboardWidth - 24 - (lettersCount * 2)) / lettersCount;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll(
            Size(
              width,
              36,
            ),
          ),
          enableFeedback: true,
          elevation: const MaterialStatePropertyAll(1),
          shape: const MaterialStatePropertyAll(
            RoundedRectangleBorder(
              side: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.elliptical(4, 4)),
            ),
          ),
          padding: const MaterialStatePropertyAll(
            EdgeInsets.zero,
          ),
          minimumSize: const MaterialStatePropertyAll(Size.zero),
          alignment: Alignment.center,
        ),
        child: title,
      ),
    );
  }
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
    final width = (kKeyboardWidth - 24 - (lettersCount * 2)) / lettersCount;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: FilledButton.tonal(
        onPressed: onPressed,
        style: ButtonStyle(
          fixedSize: MaterialStatePropertyAll(
            Size(
              width,
              36,
            ),
          ),
          enableFeedback: true,
          elevation: const MaterialStatePropertyAll(1),
          shape: const MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.elliptical(4, 4)),
            ),
          ),
          padding: const MaterialStatePropertyAll(
            EdgeInsets.zero,
          ),
          minimumSize: const MaterialStatePropertyAll(Size.zero),
          alignment: Alignment.center,
        ),
        child: title,
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
