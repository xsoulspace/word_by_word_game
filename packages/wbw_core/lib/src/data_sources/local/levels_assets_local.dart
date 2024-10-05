import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:xsoulspace_foundation/xsoulspace_foundation.dart';

import '../../gen/assets.gen.dart';
import '../data_sources.dart';

class LevelsLocalDataSourceAssetsImpl implements LevelsLocalDataSource {
  LevelsLocalDataSourceAssetsImpl({
    required this.localDb,
  });
  final LocalDbI localDb;
  final String _localKey = 'template_levels';

  @override
  Future<Map<CanvasDataModelId, CanvasDataModel>>
      getDefaultTemplateLevels() async {
    final map = <CanvasDataModelId, CanvasDataModel>{};
    for (final path in Assets.levels.values) {
      final string = await rootBundle.loadString(path);
      final data = CanvasDataModel.fromJson(jsonDecode(string));
      map[data.id] = data;
    }
    return map;
  }

  @override
  Future<Map<CanvasDataModelId, CanvasDataModel>> getTemplateLevels() async {
    final map = <CanvasDataModelId, CanvasDataModel>{};
    final jsonMaps = await localDb.getMap(_localKey);
    for (final MapEntry(:key, :value) in jsonMaps.entries) {
      final id = CanvasDataModelId.fromJson(key);
      final data = CanvasDataModel.fromJson(jsonDecode(value));
      map[id] = data;
    }
    return map;
  }

  @override
  Future<void> saveTemplateLevels({
    required final Map<CanvasDataModelId, CanvasDataModel> levels,
  }) async {
    final maps = Map.fromEntries(
      levels.entries.map(
        (final e) => MapEntry(e.key.toJson(), e.value.toJson()),
      ),
    );
    await localDb.setMap(key: _localKey, value: maps);
  }
}
