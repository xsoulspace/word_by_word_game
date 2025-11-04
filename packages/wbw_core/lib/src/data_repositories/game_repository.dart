import 'package:xsoulspace_foundation/xsoulspace_foundation.dart';

import '../data_sources/data_sources.dart';
import 'base_repository.dart';

final class GameRespository extends BaseLocalRepository<GameLocalDataSource> {
  GameRespository({required final LocalDbI localDb})
    : super(local: GameLocalDataSourceImpl(localDb: localDb));
  late final saveGame = local.saveGame;
  late final loadGame = local.loadGame;
}
