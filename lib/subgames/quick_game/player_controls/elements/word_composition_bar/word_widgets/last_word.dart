import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

class LastWordWidget extends StatelessWidget {
  const LastWordWidget({
    super.key,
  });
  @override
  Widget build(final BuildContext context) {
    final latestWord = context.select<LevelBloc, String>(
      (final state) => state.getLiveState().latestWord,
    );
    return LastWordText(latestWord: latestWord)
        .animate()
        .fadeIn()
        .slideX(begin: -0.1);
  }
}

class LastWordText extends StatefulWidget {
  const LastWordText({
    required this.latestWord,
    super.key,
  });
  final String latestWord;

  @override
  State<LastWordText> createState() => _LastWordTextState();
}

class _LastWordTextState extends State<LastWordText> {
  AnimationController? _controller;
  late String _lastWord = widget.latestWord;

  @override
  void didUpdateWidget(covariant final LastWordText oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_lastWord != widget.latestWord) {
      if (mounted) {
        _controller
          ?..reset()
          ..forward();
      }
      _lastWord = widget.latestWord;
    }
  }

  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final radius = uiTheme.circularRadius;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    if (widget.latestWord.isEmpty) return const SizedBox();
    return AnimatedContainer(
      duration: 350.milliseconds,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: radius.medium,
          bottomRight: radius.medium,
        ),
        gradient: LinearGradient(
          colors: [
            colorScheme.tertiaryContainer.withOpacity(0.4),
            colorScheme.tertiaryContainer.withOpacity(0.1),
            const Color(0x00FFFFFF),
          ],
        ),
      ),
      padding: const EdgeInsets.only(
        left: 4,
        right: 4,
        top: 2,
        bottom: 2,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(S.of(context).previousWord),
          uiTheme.horizontalBoxes.small,
          Text(_lastWord)
              .animate(
                onInit: (final controller) => _controller = controller,
              )
              .slideY(
                begin: -0.1,
                end: 0,
              )
              .scale(begin: const Offset(1.1, 1.1)),
        ],
      ),
    );
  }
}
