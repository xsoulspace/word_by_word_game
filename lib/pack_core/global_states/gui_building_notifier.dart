import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/state.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

part 'gui_building_notifier.freezed.dart';

enum GuiBuildingStatusEnum {
  idle,
  placing;
}

/// All keys are objectIds
enum GuiBuildingTypeEnum {
  tent,

  /// should not be placed anywhere, placeholder
  nothing;

  TileId get tileId => switch (this) {
        nothing => throw ArgumentError.value(this),

        /// prefix is required to create correct object id
        _ => TileId(value: 'building_$name'),
      };
}

@freezed
class GuiBuildingNotifierState with _$GuiBuildingNotifierState {
  const factory GuiBuildingNotifierState({
    @Default(GuiBuildingStatusEnum.idle) final GuiBuildingStatusEnum status,
    @Default(GuiBuildingTypeEnum.nothing) final GuiBuildingTypeEnum type,
    @Default(SerializedVector2.zero) final SerializedVector2 distanceToOrigin,
    final CellPointModel? cellPoint,
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
    final object = RenderObjectModel(
      id: Gid.create(),
      tileId: value.type.tileId,
      distanceToOrigin: value.distanceToOrigin,
    );
    dto.canvasCubit.placeBuildingObject(
      cell: value.cellPoint!,
      object: object,
    );
    print(
      'value.cellPoint: ${value.cellPoint} '
      'value.distanceToOrigin ${value.distanceToOrigin}',
    );
    cancelPlacing();
  }

  void usePlace({
    required final GameVector2 gameVector2,
  }) =>
      value = value.copyWith(
        cellPoint:
            gameVector2.toMapTileCell(isCorrectNegatives: false).toCellPoint(),
        distanceToOrigin: gameVector2.toSerializedMapVector2(),
      );

  void startPlacing({
    required final GuiBuildingTypeEnum type,
  }) =>
      value = GuiBuildingNotifierState(
        status: GuiBuildingStatusEnum.placing,
        type: type,
      );
}
