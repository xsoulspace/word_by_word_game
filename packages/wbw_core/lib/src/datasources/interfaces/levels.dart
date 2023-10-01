import 'package:map_editor/state/models/models.dart';

abstract class LevelsLocalDataSource {
  LevelsLocalDataSource._();

  /// Returns levels which are saved in core/assets
  Future<Map<CanvasDataModelId, CanvasDataModel>> getDefaultTemplateLevels();

  /// Returns levels which are saved in localDB
  Future<Map<CanvasDataModelId, CanvasDataModel>> getTemplateLevels();

  Future<void> saveTemplateLevels({
    required final Map<CanvasDataModelId, CanvasDataModel> levels,
  });
}
