import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/generated/l10n.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_game/mechanics/mechanics.dart';

part 'word_composition_row_state.dart';

class WordCompositionRow extends HookWidget {
  const WordCompositionRow({
    final Key? key,
  }) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    final state = _useWordCompositionState(read: context.read);
    final uiTheme = UiTheme.of(context);
    final spacing = uiTheme.spacing;

    return BlocBuilder<LevelBloc, LevelBlocState>(
      buildWhen: (
        final previous,
        final current,
      ) =>
          previous.latestWord != current.latestWord,
      builder: (final context, final levelState) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            LastWordText(latestWord: levelState.latestWord),
            Builder(
              builder: (final context) {
                if (levelState.latestWord.isEmpty) {
                  return WordPartTextField(
                    controller: state.rightPartController,
                    hintText: S.of(context).hintAddNewWord,
                  );
                }
                final leftTextField = Expanded(
                  child: WordPartTextField(
                    controller: state.leftPartController,
                    hintText: S.of(context).hintAddBeginning,
                  ),
                );
                final rightTextField = Expanded(
                  child: WordPartTextField(
                    controller: state.rightPartController,
                    hintText: S.of(context).hintAddEnding,
                  ),
                );

                final middleWordPartActions =
                    BlocBuilder<LevelBloc, LevelBlocState>(
                  buildWhen: (final previous, final current) =>
                      previous.currentWord.middlePart !=
                      current.currentWord.middlePart,
                  builder: (final context, final blocState) {
                    return MiddleWordPartActions(
                      middlePartOfWord: blocState.currentWord.middlePart,
                      onLeftTap: state.onDecreaseLeftPart,
                      onRightTap: state.onDecreaseRightPart,
                    );
                  },
                );

                return Row(
                  children: [
                    leftTextField,
                    middleWordPartActions,
                    rightTextField,
                  ],
                );
              },
            ),
          ],
        );
      },
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
      style: const TextStyle(fontSize: 14.0),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
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
    required this.middlePartOfWord,
    required this.onLeftTap,
    required this.onRightTap,
    final Key? key,
  }) : super(key: key);
  final String middlePartOfWord;
  final VoidCallback onLeftTap;
  final VoidCallback onRightTap;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final spacing = uiTheme.spacing;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: spacing.small),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          MinusIconButton(
            onPressed: onLeftTap,
          ),
          Text(middlePartOfWord),
          MinusIconButton(
            onPressed: onRightTap,
          )
        ],
      ),
    );
  }
}

class LastWordText extends StatelessWidget {
  const LastWordText({
    required this.latestWord,
    final Key? key,
  }) : super(key: key);
  final String latestWord;
  @override
  Widget build(final BuildContext context) {
    return Text(latestWord);
  }
}
