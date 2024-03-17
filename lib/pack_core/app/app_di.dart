import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_editor/state/state.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/ads/states/states.dart';
import 'package:word_by_word_game/pack_core/global_states/debug/debug.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/global_states/weather/weather_cubit.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboard_elements.dart';

class AppDiProviderDto {
  AppDiProviderDto({
    required this.analyticsService,
    required this.firebaseInitializer,
  });
  final AnalyticsService analyticsService;
  final FirebaseInitializer? firebaseInitializer;
}

class AppDiProvider extends StatefulWidget {
  const AppDiProvider({
    required this.diDto,
    required this.child,
    super.key,
  });
  final Widget child;
  final AppDiProviderDto diDto;

  @override
  State<AppDiProvider> createState() => _AppDiProviderState();
}

class _AppDiProviderState extends State<AppDiProvider> {
  @override
  void dispose() {
    widget.diDto.analyticsService.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => MultiProvider(
        providers: [
          Provider(create: (final context) => widget.diDto.analyticsService),
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
        child: Builder(
          builder: (final context) {
            final initialProviders = <SingleChildWidget>[
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
            ];

            final otherProviders = <SingleChildWidget>[];

            return MultiBlocProvider(
              providers: [
                ...initialProviders,
                ...otherProviders,
              ],
              child: Builder(
                builder: (final context) => widget.child,
              ),
            );
          },
        ),
      );
}
