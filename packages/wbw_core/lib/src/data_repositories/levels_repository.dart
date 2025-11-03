import 'package:xsoulspace_foundation/xsoulspace_foundation.dart';

import '../data_sources/data_sources.dart';

class LevelsRepository {
  LevelsRepository({required final LocalDbI localDb})
    : localAssets = LevelsLocalDataSourceAssetsImpl(localDb: localDb);
  final LevelsLocalDataSource localAssets;

  late final getDefaultTemplateLevels = localAssets.getDefaultTemplateLevels;
  late final getTemplateLevels = localAssets.getTemplateLevels;
  late final saveTemplateLevels = localAssets.saveTemplateLevels;
}
