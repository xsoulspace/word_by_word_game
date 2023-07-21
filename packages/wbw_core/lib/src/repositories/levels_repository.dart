import 'package:map_editor/state/models/models.dart';

import '../datasources/datasources.dart';

class LevelsRepository {
  LevelsRepository({
    required this.localAssets,
  });
  final LevelsLocalDataSource localAssets;
  Future<Map<CanvasDataModelId, CanvasDataModel>> getLevels() async =>
      localAssets.getLevels();
}
