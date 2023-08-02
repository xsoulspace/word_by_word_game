import 'package:map_editor/state/models/models.dart';

abstract class LevelsLocalDataSource {
  LevelsLocalDataSource._();
  Future<Map<CanvasDataModelId, CanvasDataModel>> getLevels();
}
