import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:map_editor/state/models/models.dart';

import '../../gen/assets.gen.dart';
import '../datasources.dart';

class LevelsLocalDataSourceAssetsImpl implements LevelsLocalDataSource {
  LevelsLocalDataSourceAssetsImpl();
  @override
  Future<Map<CanvasDataModelId, CanvasDataModel>> getLevels() async {
    final map = <CanvasDataModelId, CanvasDataModel>{};
    for (final path in Assets.levels.values) {
      final string = await rootBundle.loadString(path);
      final data = CanvasDataModel.fromJson(jsonDecode(string));
      map[data.id] = data;
    }
    return map;
  }
}
