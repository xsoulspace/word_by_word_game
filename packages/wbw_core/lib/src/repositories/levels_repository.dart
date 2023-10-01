import 'package:map_editor/state/models/models.dart';

import '../datasources/datasources.dart';

class LevelsRepository {
  LevelsRepository({required this.localAssets});
  final LevelsLocalDataSource localAssets;

  Future<Map<CanvasDataModelId, CanvasDataModel>>
      getDefaultTemplateLevels() async =>
          localAssets.getDefaultTemplateLevels();

  Future<Map<CanvasDataModelId, CanvasDataModel>> getTemplateLevels() =>
      localAssets.getTemplateLevels();

  Future<void> saveTemplateLevels({
    required final Map<CanvasDataModelId, CanvasDataModel> levels,
  }) =>
      localAssets.saveTemplateLevels(levels: levels);
}
