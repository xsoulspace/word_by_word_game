import 'package:wbw_design_core/wbw_design_core.dart';

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
