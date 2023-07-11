part of '../models.dart';

@freezed
class TileMenuItem with _$TileMenuItem {
  const factory TileMenuItem({
    required final int index,
    required final PresetTileResource data,
  }) = _TileMenuItem;
}
