import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/actions_advanced_frame.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/actions_simple_frame.dart';

class UiActionFrame extends StatelessWidget {
  const UiActionFrame({super.key});

  @override
  Widget build(final BuildContext context) {
    final levelCubit = context.watch<LevelBloc>();
    final uiTheme = context.uiTheme;
    if (levelCubit.state.featuresSettings.isTechnologiesEnabled) {
      return const UIActionFrameAdvanced();
    } else {
      return Column(
        children: [
          uiTheme.verticalBoxes.small,
          const UiActionFrameSimple(),
          uiTheme.verticalBoxes.medium,
        ],
      );
    }
  }
}

class UiActionButton extends StatefulWidget {
  const UiActionButton({
    required this.onCompleted,
    required this.child,
    super.key,
  });
  final Widget child;
  final VoidCallback onCompleted;

  @override
  State<UiActionButton> createState() => _UiActionButtonState();
}

class _UiActionButtonState extends State<UiActionButton>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  bool _isOnHold = false;

  bool get isOnHold => _isOnHold;

  set isOnHold(final bool isHolding) {
    _isOnHold = isHolding;
    if (mounted) setState(() {});
  }

  @override
  Widget build(final BuildContext context) {
    final theme = Theme.of(context);
    final uiTheme = context.uiTheme;
    final colorScheme = theme.colorScheme;
    final surfaces = theme.extension<SurfaceColorScheme>()!;
    final borderRadius = _isOnHold
        ? BorderRadius.all(uiTheme.circularRadius.medium)
        : BorderRadius.all(uiTheme.circularRadius.medium);

    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 70),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTapDown: (final _) => isOnHold = true,
            onTapUp: (final _) {
              isOnHold = false;
              widget.onCompleted();
            },
            onTapCancel: () => isOnHold = false,
            child: FocusableActionDetector(
              onShowHoverHighlight: (final value) {
                _isHovered = value;
                setState(() {});
              },
              mouseCursor: SystemMouseCursors.click,
              child: Transform.scale(
                scale: _isOnHold ? 0.9 : 1,
                child: AnimatedContainer(
                  duration: 50.milliseconds,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: () {
                      if (_isOnHold) return surfaces.surface5;
                      if (_isHovered) return surfaces.surface1;

                      return surfaces.surface3;
                    }(),
                    border: Border.all(
                      color: colorScheme.tertiary,
                      width: _isHovered ? 2.5 : 1,
                    ),
                    borderRadius: borderRadius,
                  ),
                  margin: EdgeInsets.only(
                    top: () {
                      if (_isOnHold) return 8.toDouble();
                      if (_isHovered) return 4.toDouble();
                      return 8.toDouble();
                    }(),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: widget.child,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
