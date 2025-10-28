import 'package:provider/provider.dart';
import 'package:wbw_dictionaries/wbw_dictionaries.dart';
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/pack_core/ads/states/states.dart';
import 'package:word_by_word_game/pack_core/di/di.dart';
import 'package:word_by_word_game/pack_core/global_states/debug/debug.dart';
import 'package:word_by_word_game/pack_core/global_states/global_services_initializer.dart';
import 'package:word_by_word_game/pack_core/global_states/weather/weather_cubit.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
import 'package:word_by_word_game/subgames/quick_game/keyboards/keyboard_elements.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/screen_animations/ui_power_points_animation.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/screen_animations/ui_tech_points_animation.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/word_composition_bar/word_composition_bar.dart';

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
      ChangeNotifierProvider(create: UiTechPointsAnimationNotifier.new),
      ChangeNotifierProvider(create: UiPowerPointsAnimationNotifier.new),
      ChangeNotifierProvider(create: AppStatusNotifier.new),
      ChangeNotifierProvider.value(value: Di.get<UiLocaleResource>()),
      ChangeNotifierProvider(create: OnlineStatusService.new),
      Provider(
        create: (final context) => AppServerpodClient(url: Envs.serverUrl),
      ),
      Provider(create: (final context) => initializer.analyticsService),
      Provider<LocalDbI>(create: PrefsDb.new),
      ChangeNotifierProvider(create: WbwDictionary.provide),
      Provider(create: LevelsRepository.new),
      Provider(create: GameRespository.new),
      Provider(create: WordsRespository.new),
      Provider(create: AppSettingsRepository.new),
      Provider(create: MechanicsCollection.getV1),
      Provider(create: (final context) => AdManager()),
      const BlocProvider(create: StatesStatusesCubit.new),
      Provider(create: ServicesCollection.new),
      Provider(create: UiThemeScheme.m3),
      Provider(create: (final context) => context.read<UiThemeScheme>().text),
    ],
    builder: (final context, final child) => MultiBlocProvider(
      providers: [
        ChangeNotifierProvider(create: LevelFeaturesNotifier.new),
        ChangeNotifierProvider(create: UiKeyboardController.new),
        const BlocProvider(create: CanvasCubit.new),
        const BlocProvider(create: TechnologiesCubit.new),
        const BlocProvider(create: DictionariesBloc.new),
        const BlocProvider(create: LevelPlayersBloc.new),
        const BlocProvider(create: LevelBloc.new),
        const BlocProvider(create: TutorialBloc.new),
        const BlocProvider(create: WeatherCubit.new),
        const BlocProvider(create: GlobalGameBloc.new),
        ChangeNotifierProvider(create: AppSettingsNotifier.new),
        const BlocProvider(create: GameConstantsCubit.new),
        ChangeNotifierProvider(create: DialogController.new),
        ChangeNotifierProvider(create: GuiWordCompositionCubit.new),
        ChangeNotifierProvider(create: GuiBuildingNotifier.new),
        ChangeNotifierProvider(create: GuiFocusableObjectsNotifier.new),
        ChangeNotifierProvider(create: KeyboardBindingsNotifier.new),

        /// should be last
        const BlocProvider(create: DebugCubit.new),
      ],
      child: Builder(builder: builder),
    ),
  );
}
