import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:wbw_dictionaries/wbw_dictionaries.dart';
import 'package:word_by_word_game/envs.dart';
import 'package:word_by_word_game/pack_core/ads/states/states.dart';
import 'package:word_by_word_game/pack_core/global_states/debug/debug.dart';
import 'package:word_by_word_game/pack_core/global_states/global_services_initializer.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/global_states/weather/weather_cubit.dart';
import 'package:word_by_word_game/subgames/quick_game/dialogs/dialogs.dart';
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
          ChangeNotifierProvider(create: AppStatusNotifier.new),
          ChangeNotifierProvider.value(value: uiLocaleNotifier),
          ChangeNotifierProvider(create: OnlineStatusService.new),
          Provider(
            create: (final context) => AppServerpodClient(url: Envs.serverUrl),
          ),
          Provider(create: (final context) => initializer.analyticsService),
          Provider<LocalDbDataSource>(
            create: SharedPreferencesDbDataSourceImpl.new,
          ),
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
          Provider(
            create: (final context) => context.read<UiThemeScheme>().text,
          ),
        ],
        builder: (final context, final child) => MultiBlocProvider(
          providers: [
            const BlocProvider(create: DebugCubit.new),
            ChangeNotifierProvider(create: LevelFeaturesNotifier.new),
            const BlocProvider(create: UiKeyboardController.new),
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
            ChangeNotifierProvider(create: DialogStackNotifier.new),
            Provider(create: DialogStackNotifier.getDialogController),
            ChangeNotifierProvider(create: GuiBuildingNotifier.new),
            ChangeNotifierProvider(create: GuiFocusableObjectsNotifier.new),
          ],
          child: Builder(builder: builder),
        ),
      );
}
