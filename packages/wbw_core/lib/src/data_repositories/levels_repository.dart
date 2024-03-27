import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../data_sources/data_sources.dart';

class LevelsRepository {
  LevelsRepository(final BuildContext context)
      : localAssets = LevelsLocalDataSourceAssetsImpl(localDb: context.read());
  final LevelsLocalDataSource localAssets;

  late final getDefaultTemplateLevels = localAssets.getDefaultTemplateLevels;
  late final getTemplateLevels = localAssets.getTemplateLevels;
  late final saveTemplateLevels = localAssets.saveTemplateLevels;
}
