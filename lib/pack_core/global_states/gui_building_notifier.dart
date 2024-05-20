import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

part 'gui_building_notifier.freezed.dart';

enum GuiBuildingStatusEnum {
  idle,
  placing,
}

enum GuiBuildingTypeEnum {
  tent,
  nothing;
}

@freezed
class GuiBuildingNotifierState with _$GuiBuildingNotifierState {
  const factory GuiBuildingNotifierState({
    @Default(GuiBuildingStatusEnum.idle) final GuiBuildingStatusEnum status,
    @Default(GuiBuildingTypeEnum.nothing) final GuiBuildingTypeEnum type,
  }) = _GuiBuildingNotifierState;
  static const idle = GuiBuildingNotifierState();
}

class GuiBuildingNotifierDto {
  GuiBuildingNotifierDto({required final BuildContext context})
      : canvasCubit = context.read();
  final CanvasCubit canvasCubit;
}

/// this state should not be saved, as it is itermediate state
class GuiBuildingNotifier extends ValueNotifier<GuiBuildingNotifierState> {
  GuiBuildingNotifier(final BuildContext context)
      : dto = GuiBuildingNotifierDto(context: context),
        super(GuiBuildingNotifierState.idle);
  final GuiBuildingNotifierDto dto;
  bool get isPlacing => value.status == GuiBuildingStatusEnum.placing;
  void cancelPlacing() {
    value = GuiBuildingNotifierState.idle;
  }

  void confirmPlacing() {
    // TODO(arenukvern): add game object to canvas data to building layer
    cancelPlacing();
  }

  void startPlacing({
    required final GuiBuildingTypeEnum type,
  }) =>
      value = GuiBuildingNotifierState(
        status: GuiBuildingStatusEnum.placing,
        type: type,
      );
}
