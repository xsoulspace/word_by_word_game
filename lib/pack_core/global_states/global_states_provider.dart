import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_editor/state/state.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/ads/states/states.dart';
import 'package:word_by_word_game/pack_core/global_states/debug/debug.dart';
import 'package:word_by_word_game/pack_core/global_states/global_services_initializer.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/global_states/weather/weather_cubit.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboard_elements.dart';

class GlobalStatesProvider extends StatelessWidget {
  const GlobalStatesProvider({
    required this.builder,
    required this.initializer,
    super.key,
  });
  final WidgetBuilder builder;
  final GlobalServicesInitializer initializer;

  @override
  Widget build(final BuildContext context) => MultiProvider(
        providers: [
          Provider(
            create: (final context) => initializer.analyticsService,
          ),
          Provider<LocalDbDataSource>(
            create: SharedPreferencesDbDataSourceImpl.new,
          ),
          Provider(create: LevelsRepository.new),
          Provider<GameRespository>(
            create: (final context) => GameRespository(
              local: GameLocalDataSourceImpl(localDb: context.read()),
            ),
          ),
          Provider(create: DictionariesRespository.new),
          Provider(create: AppSettingsRepository.new),
          Provider<MechanicsCollection>(
            create: (final context) => MechanicsCollection.v1,
          ),
          Provider(create: (final context) => AdManager()),
          BlocProvider(
            create: (final context) => StatesStatusesCubit(
              dto: StatesStatusesCubitDto(context: context),
            ),
          ),
          Provider(create: ServicesCollection.new),
        ],
        builder: (final context, final child) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (final context) => DebugCubit(
                dto: DebugCubitDto(),
              ),
            ),
            BlocProvider(
              create: (final context) => CanvasCubit(
                canvasDto: CanvasCubitDto(),
                drawerCubit: DrawerCubitDto.use(context: context),
              ),
            ),
            BlocProvider(
              create: (final context) => DictionariesBloc(
                diDto: DictionariesBlocDiDto.use(context),
              ),
            ),
            BlocProvider(
              create: (final context) => LevelPlayersBloc(
                diDto: LevelPlayersBlocDiDto.use(context),
              ),
            ),
            BlocProvider<LevelBloc>(
              create: (final context) => LevelBloc(
                diDto: LevelBlocDiDto.use(context),
              ),
            ),
            BlocProvider(
              create: (final context) => TutorialBloc(
                diDto: TutorialBlocDiDto.use(context),
              ),
            ),
            BlocProvider(
              create: (final context) => WeatherCubit(
                dto: WeatherCubitDto(context: context),
              ),
            ),
            BlocProvider<GlobalGameBloc>(
              create: (final context) => GlobalGameBloc(
                diDto: GlobalGameBlocDiDto.use(context: context),
              ),
            ),
            BlocProvider(
              create: (final context) => AppSettingsCubit(
                dto: AppSettingsCubitDto(context: context),
              ),
            ),
            BlocProvider(
              create: (final context) => GameConstantsCubit(
                dto: GameConstantsCubitDto(),
              ),
            ),
            BlocProvider(
              create: (final context) => UiKeyboardController(),
            ),
          ],
          child: Builder(builder: builder),
        ),
      );
}
