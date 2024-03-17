import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../data_repositories/data_repositories.dart';
import '../data_sources/data_sources.dart';

export 'analytics/analytics.dart';

class ServicesCollection {
  ServicesCollection(final BuildContext context)
      : gameRepository = context.read(),
        localDataService = context.read(),
        dictionariesRepository = context.read(),
        appSettingsRepository = context.read(),
        levelsRepository = context.read();

  final LocalDbDataSource localDataService;
  final DictionariesRespository dictionariesRepository;
  final LevelsRepository levelsRepository;
  final GameRespository gameRepository;
  final AppSettingsRepository appSettingsRepository;
}
