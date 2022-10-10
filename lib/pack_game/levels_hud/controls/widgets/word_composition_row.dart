import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/generated/l10n.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_game/levels_hud/controls/widgets/word_actions_buttons.dart';
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
    final buildAndListenWhenCallback = LevelBloc.useCheckStateEqualityBuilder(
      checkLiveState: (final previous, final current) =>
          previous.latestWord != current.latestWord,
    );
    return BlocListener<LevelBloc, LevelBlocState>(
      listener: (final context, final blocState) {
        state.onLatestWordChanged();
      },
      listenWhen: buildAndListenWhenCallback,
      child: BlocBuilder<LevelBloc, LevelBlocState>(
        buildWhen: buildAndListenWhenCallback,
        builder: (final context, final levelState) {
          if (levelState is! LiveLevelBlocState) return const SizedBox();

          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Builder(
                builder: (final context) {
                  final leftTextField = Expanded(
                    child: WordPartTextField(
                      textFieldFocusNode: state.leftWordFocus,
                      onEnterPressed: state.onRequestRightTextFocus,
                      onSubmitted: state.onRequestRightTextFocus,
                      keyFocusNode: state.leftWordKeyFocus,
                      controller: state.leftPartController,
                      hintText: S.of(context).hintAddBeginning,
                    ),
                  );

                  final middleWordPartActions =
                      BlocBuilder<LevelBloc, LevelBlocState>(
                    buildWhen: LevelBloc.useCheckStateEqualityBuilder(
                      checkLiveState: (final previous, final current) =>
                          previous.currentWord.middlePart !=
                          current.currentWord.middlePart,
                    ),
                    builder: (final context, final blocState) {
                      if (blocState is! LiveLevelBlocState) {
                        return const SizedBox();
                      }
                      return MiddleWordPartActions(
                        middlePartOfWord: blocState.currentWord.middlePart,
                        onLeftPressed: state.onDecreaseLeftPart,
                        onRightPressed: state.onDecreaseRightPart,
                      );
                    },
                  );
                  final rightTextField = Expanded(
                    child: WordPartTextField(
                      keyFocusNode: state.rightWordKeyFocus,
                      textFieldFocusNode: state.rightWordFocus,
                      controller: state.rightPartController,
                      hintText: S.of(context).hintAddEnding,
                      onSubmitted: state.onSend,
                    ),
                  );

                  return Row(
                    children: [
                      if (levelState.latestWord.isNotEmpty) leftTextField,
                      if (levelState.latestWord.isNotEmpty)
                        middleWordPartActions,
                      rightTextField,
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SendWordButton(
                            onPressed: state.onSend,
                          ),
                          AddWordToDictionaryButton(
                            onPressed: state.onAddWordToDictionary,
                          ),
                        ],
                      )
                    ],
                  );
                },
              ),
              uiTheme.verticalBoxes.small,
            ],
          );
        },
      ),
    );
  }
}

class LastWordWidget extends StatelessWidget {
  const LastWordWidget({
    super.key,
  });
  @override
  Widget build(final BuildContext context) {
    final latestWord = context.select<LevelBloc, String>(
      (final state) => state.getLiveState().latestWord,
    );
    return LastWordText(latestWord: latestWord);
  }
}

class WordPartTextField extends StatelessWidget {
  const WordPartTextField({
    required this.controller,
    required this.hintText,
    required this.onSubmitted,
    required this.keyFocusNode,
    this.onEnterPressed,
    this.textFieldFocusNode,
    final Key? key,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final VoidCallback? onEnterPressed;
  final VoidCallback? onSubmitted;
  final FocusNode keyFocusNode;
  final FocusNode? textFieldFocusNode;

  @override
  Widget build(final BuildContext context) {
    return RawKeyboardListener(
      focusNode: keyFocusNode,
      onKey: (final event) {
        if (event.isKeyPressed(LogicalKeyboardKey.enter)) {
          onEnterPressed?.call();
        }
      },
      child: TextField(
        focusNode: textFieldFocusNode,
        onSubmitted: (final _) => onSubmitted?.call(),
        onEditingComplete: () {},
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
      ),
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
    required this.onLeftPressed,
    required this.onRightPressed,
    final Key? key,
  }) : super(key: key);
  final String middlePartOfWord;
  final VoidCallback onLeftPressed;
  final VoidCallback onRightPressed;
  @override
  Widget build(final BuildContext context) {
    final uiTheme = UiTheme.of(context);
    final spacing = uiTheme.spacing;

    final player =
        context.select<LevelPlayersBloc, PlayerProfileModel>((final bloc) {
      final liveState = bloc.getLiveState();
      return liveState.currentPlayer;
    });

    final mechanics = context.watch<MechanicsCollection>();

    final isPlayerAbleToDecrease = mechanics.score.checkPlayerAbilityToDecrease(
      player: player,
    );

    Widget child;
    if (isPlayerAbleToDecrease) {
      child = Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          MinusIconButton(
            onPressed: onLeftPressed,
          ),
          Text(middlePartOfWord),
          MinusIconButton(
            onPressed: onRightPressed,
          )
        ],
      );
    } else {
      child = Text(middlePartOfWord);
    }

    return Visibility(
      visible: middlePartOfWord.isNotEmpty,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: spacing.medium),
        child: child,
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
    if (latestWord.isEmpty) return const SizedBox();
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text('Previous Word: '),
        Text(latestWord),
      ],
    );
  }
}
