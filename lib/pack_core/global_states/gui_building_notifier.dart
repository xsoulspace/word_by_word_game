import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_editor/state/state.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/focused_object_actions_view.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_composition_bar.dart';

part 'gui_building_notifier.freezed.dart';
part 'gui_building_notifier.g.dart';

enum GuiBuildingStatusEnum {
  idle,
  placing;
}

/// All keys are objectIds
@JsonEnum(alwaysCreate: true)
enum GuiBuildingTypeEnum {
  @JsonValue('tent')
  tent,

  /// Acoustic resonance anemometers https://en.wikipedia.org/wiki/Anemometer
  /// Rain water is saved on the top of the tower
  /// Then it is used to create resonate wave
  /// which is used to calculate (speculate & guess) wind speed.
  @JsonValue('wind_water_tower')
  windWaterTower,

  /// should not be placed anywhere, placeholder
  nothing;

  factory GuiBuildingTypeEnum.fromJson(final String json) =>
      _$GuiBuildingTypeEnumEnumMap.entries
          .firstWhere((final e) => e.value == json)
          .key;
  String toNamedJson() => _$GuiBuildingTypeEnumEnumMap[this]!;
  TileId get tileId => switch (this) {
        nothing => throw ArgumentError.value(this),

        /// prefix is required to create correct object id
        _ => TileId(value: 'building_${toNamedJson()}'),
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
      : canvasCubit = context.read(),
        wordCompositionCubit = context.read();
  final CanvasCubit canvasCubit;
  final GuiWordCompositionCubit wordCompositionCubit;
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
    dto.wordCompositionCubit.onBuildingBuilt(kBuildObjectMultiplier);
    if (kDebugMode) {
      print(
        '\nvalue.cellPoint: ${value.cellPoint} '
        '\nvalue.distanceToOrigin ${value.distanceToOrigin}'
        '\nvalue.type ${value.type}',
      );
    }
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
