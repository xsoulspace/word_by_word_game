import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:wbw_locale/wbw_locale.dart';
import 'package:wbw_ui_kit/wbw_ui_kit.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

class LastWordWidget extends StatelessWidget {
  const LastWordWidget({super.key});
  @override
  Widget build(final BuildContext context) {
    final latestWord = context.select<LevelBloc, String>(
      (final state) => state.state.latestWord,
    );
    return LastWordText(latestWord: latestWord);
  }
}

class LastWordText extends StatefulWidget {
  const LastWordText({required this.latestWord, super.key});
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
        try {
          _controller
            ?..reset()
            ..forward();
          // ignore: empty_catches, avoid_catches_without_on_clauses
        } catch (e) {
          // TODO(arenukvern): the problem seems to be in animation library..
          // need to figure out how to fix this and send PR
        }
      }
      _lastWord = widget.latestWord;
    }
  }

  @override
  Widget build(final BuildContext context) {
    const radius = Radius.elliptical(UiSpace.medium, UiSpace.medium);
    final theme = Theme.of(context);
    final textStyle = theme.textTheme.labelMedium;
    final colorScheme = theme.colorScheme;
    if (widget.latestWord.isEmpty) return const SizedBox();
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: radius,
          bottomRight: radius,
        ),
        border: Border.all(
          color: colorScheme.tertiaryContainer.withOpacity(0.4),
        ),
      ),
      padding: const EdgeInsets.only(left: 4, right: 4, top: 2, bottom: 2),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            S.of(context).previousWord,
            style: textStyle?.copyWith(
              color: colorScheme.onSurface.withOpacity(0.8),
            ),
          ),
          UiGaps.small,
          Container(
            padding: const EdgeInsets.only(
              top: 2,
              bottom: 2,
              left: 8,
              right: 8,
            ),
            decoration: BoxDecoration(
              color: colorScheme.tertiaryContainer.withOpacity(0.3),
              borderRadius: const BorderRadius.all(radius),
            ),
            child: Text(_lastWord, style: textStyle)
                .animate(onInit: (final controller) => _controller = controller)
                .slideY(begin: -0.1, end: 0)
                .scale(begin: const Offset(1.1, 1.1)),
          ),
        ],
      ),
    );
  }
}
