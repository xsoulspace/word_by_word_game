part of pack_game;

class WordCompositionRow extends StatelessWidget {
  const WordCompositionRow({
    required this.wordWriterState,
    final Key? key,
  }) : super(key: key);
  final GameWordWriterScreenState wordWriterState;

  @override
  Widget build(final BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenLayout = ScreenLayout.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: const [
            SizedBox(
              width: 20,
            ),
            LastWordText()
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
        ),
        LayoutBuilder(
          builder: (final context, final constraints) {
            final leftTextField = Expanded(
              child: WordPartTextField(
                controller: wordWriterState.leftPartController,
                hintText: S.of(context).hintAddBeginning,
              ),
            );
            final rightTextField = Expanded(
              child: WordPartTextField(
                controller: wordWriterState.rightPartController,
                hintText: S.of(context).hintAddEnding,
              ),
            );

            final middleWordPartActions = MiddleWordPartActions(
              middleWordPartNotifier: wordWriterState.middlePart,
              onLeftTap: wordWriterState.onDecreaseLeftPart,
              onRightTap: wordWriterState.onDecreaseRightPart,
            );

            if (screenLayout.small) {
              return SizedBox(
                height: size.height * 0.2,
                child: Column(
                  children: [
                    leftTextField,
                    middleWordPartActions,
                    rightTextField,
                  ],
                ),
              );
            } else {
              return Row(
                children: [
                  leftTextField,
                  middleWordPartActions,
                  rightTextField,
                ],
              );
            }
          },
        ),
      ],
    );
  }
}

class WordPartTextField extends StatelessWidget {
  const WordPartTextField({
    required this.controller,
    required this.hintText,
    final Key? key,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(final BuildContext context) {
    return TextField(
      // TODO(arenukvern): standardize the size
      style: const TextStyle(fontSize: 14.0),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        hintText: hintText,
      ),
      controller: controller,
    );
  }
}

class MinusIconButton extends StatelessWidget {
  const MinusIconButton({
    required this.onPressed,
    final Key? key,
  }) : super(key: key);
  final VoidCallback onPressed;

  @override
  Widget build(final BuildContext context) {
    return IconButton(
      // disabledColor: Colors.grey,
      iconSize: 36,
      // color: playerColor,
      // splashColor: playerColor.withOpacity(0.4),
      // hoverColor: playerColor.withOpacity(0.1),
      // highlightColor: playerColor.withOpacity(0.2),
      icon: const Icon(Icons.remove),
      onPressed: onPressed,
    );
  }
}

class MiddleWordPartActions extends StatelessWidget {
  const MiddleWordPartActions({
    required this.middleWordPartNotifier,
    required this.onLeftTap,
    required this.onRightTap,
    final Key? key,
  }) : super(key: key);
  final ValueNotifier<String> middleWordPartNotifier;
  final VoidCallback onLeftTap;
  final VoidCallback onRightTap;
  @override
  Widget build(final BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MinusIconButton(
                onPressed: onLeftTap,
              ),
              ValueListenableBuilder<String>(
                valueListenable: middleWordPartNotifier,
                builder: (final buildContext, final wordPart, final widget) =>
                    Text(wordPart),
              ),
              MinusIconButton(
                onPressed: onRightTap,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class LastWordText extends StatelessWidget {
  const LastWordText({
    final Key? key,
  }) : super(key: key);
  @override
  Widget build(final BuildContext context) {
    final writtenWordsNotifier = context.read<WrittenWordsNotifier>();

    return ValueListenableBuilder<String>(
      valueListenable: writtenWordsNotifier.lastWord,
      builder: (final context, final word, final child) => Text(word),
    );
  }
}
