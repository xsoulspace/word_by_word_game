import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/game_renderer/components/components.dart';

part 'gui_focusable_objects_notifier.freezed.dart';

class GuiFocusableObjectsNotifierDto {
  GuiFocusableObjectsNotifierDto({required final BuildContext context})
      : canvasCubit = context.read(),
        mechanics = context.read(),
        levelBloc = context.read();
  final CanvasCubit canvasCubit;
  final LevelBloc levelBloc;
  final MechanicsCollection mechanics;
}

@freezed
class GuiFocusableObjectsNotifierState with _$GuiFocusableObjectsNotifierState {
  const factory GuiFocusableObjectsNotifierState({
    @Default(false) final bool isChoosing,

    /// should have order:
    /// farthest | nearest in center | farthest
    ///
    /// Maybe it would be good to show some distance?
    @Default([]) final List<Gid> nearestObjectIds,
    @Default(false) final bool isNearestObjectsLoaded,
  }) = _GuiFcoNotifierState;
  static const idle = GuiFocusableObjectsNotifierState();
}

/// this state should not be saved, as it is itermediate state
///
/// when state is true, it means that user is currently choosing new Fco
class GuiFocusableObjectsNotifier
    extends ValueNotifier<GuiFocusableObjectsNotifierState> {
  GuiFocusableObjectsNotifier(final BuildContext context)
      : dto = GuiFocusableObjectsNotifierDto(context: context),
        super(GuiFocusableObjectsNotifierState.idle);
  final GuiFocusableObjectsNotifierDto dto;
  bool get isFocusing => value.isChoosing;
  void cancelFocusing() => value = GuiFocusableObjectsNotifierState.idle;

  void confirmChoosing() {
    // TODO(arenukvern): description
    cancelFocusing();
  }

  /// all nearest objects will be updated in the next tick
  /// from the player render object
  void startChoosing() {
    value = value.copyWith(isChoosing: true);
  }

  bool _isLoadingIds = false;

  /// should be called from [player]
  Future<void> updateNearestObjects({
    required final PlayerGameCanvasObject player,
  }) async {
    if (value.isNearestObjectsLoaded) return;
    if (_isLoadingIds) return;

    ///eliminating possible gap
    _isLoadingIds = true;

    value = value.copyWith(
      isNearestObjectsLoaded: true,
      nearestObjectIds: await player.getNearestFocusableObjectsIds(),
    );
    _isLoadingIds = false;
  }
}