import 'package:xsoulspace_foundation/xsoulspace_foundation.dart';

import '../data_sources/data_sources.dart';
import 'base_repository.dart';

final class GameRespository extends BaseLocalRepository<GameLocalDataSource> {
  GameRespository({
    required final LocalDbI localDb,
    required final GameSaveStore saveStore,
    final String savePath = 'game_save_v1.json',
  }) : super(
         local: GameLocalDataSourceImpl(
           localDb: localDb,
           saveStore: saveStore,
           savePath: savePath,
         ),
       );
  late final saveGame = local.saveGame;
  late final loadGame = local.loadGame;
}
