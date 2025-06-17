import 'package:wbw_ui_kit/wbw_ui_kit.dart';

class UiWordLetterButton extends StatelessWidget {
  const UiWordLetterButton({
    required this.onPressed,
    required this.letter,
    super.key,
  });
  final VoidCallback onPressed;
  final String letter;

  @override
  Widget build(final BuildContext context) => UiTextButton.text(
    text: letter,
    mainAlignment: MainAxisAlignment.center,
    onPressed: onPressed,
    width: null,
  );
}
