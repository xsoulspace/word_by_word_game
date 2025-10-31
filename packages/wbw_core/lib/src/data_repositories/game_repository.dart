import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_ui_kit/wbw_ui_kit.dart';

import '../data_sources/data_sources.dart';
import 'base_repository.dart';

final class GameRespository extends BaseLocalRepository<GameLocalDataSource> {
  GameRespository(final BuildContext context)
    : super(local: GameLocalDataSourceImpl(localDb: context.read()));
  late final saveGame = local.saveGame;
  late final loadGame = local.loadGame;
}
