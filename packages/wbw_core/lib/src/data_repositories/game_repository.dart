import '../data_sources/data_sources.dart';
import 'base_repository.dart';

final class GameRespository extends BaseLocalRepository<GameLocalDataSource> {
  GameRespository({required super.local});
  late final saveGame = local.saveGame;
  late final loadGame = local.loadGame;
}
