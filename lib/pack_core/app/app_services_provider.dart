import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_editor/state/state.dart';
// ignore: implementation_imports
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/ads/states/states.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

class AppServicesProviderDto {
  AppServicesProviderDto({
    required this.analyticsService,
    required this.firebaseInitializer,
  });
  final AnalyticsService analyticsService;
  final FirebaseInitializer? firebaseInitializer;
}

class AppServicesProvider extends StatefulWidget {
  const AppServicesProvider({
    required this.diDto,
    required this.child,
    super.key,
  });
  final Widget child;
  final AppServicesProviderDto diDto;

  @override
  State<AppServicesProvider> createState() => _AppServicesProviderState();
}

class _AppServicesProviderState extends State<AppServicesProvider> {
  @override
  void dispose() {
    widget.diDto.analyticsService.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) => MultiProvider(
        providers: [
          Provider(
            create: (final context) => widget.diDto.analyticsService,
          ),
          Provider<ServicesCollection>(
            create: (final context) => ServicesCollection.v1,
          ),
          Provider<LocalDataService>(
            create: (final context) =>
                context.read<ServicesCollection>().localDataService,
          ),
          Provider<MechanicsCollection>(
            create: (final context) => MechanicsCollection.v1,
          ),
          Provider(create: (final context) => AdManager())
        ],
        child: Builder(
          builder: (final context) {
            late Locator providersContextLocator;
            final initialProviders = <SingleChildWidget>[
              BlocProvider(
                create: (final context) => CanvasCubit(
                  canvasDto: CanvasCubitDto(),
                  drawerCubit: DrawerCubitDto.use(context: context),
                ),
              ),
              BlocProvider(
                create: (final context) => DictionariesBloc(
                  diDto: DictionariesBlocDiDto.use(providersContextLocator),
                ),
              ),
              BlocProvider(
                create: (final context) => LevelPlayersBloc(
                  diDto: LevelPlayersBlocDiDto.use(providersContextLocator),
                ),
              ),
              BlocProvider<LevelBloc>(
                create: (final context) => LevelBloc(
                  diDto: LevelBlocDiDto.use(providersContextLocator),
                ),
              ),
              BlocProvider(
                create: (final context) => TutorialBloc(
                  diDto: TutorialBlocDiDto.use(providersContextLocator),
                ),
              ),
              BlocProvider<GlobalGameBloc>(
                create: (final context) => GlobalGameBloc(
                  diDto: GlobalGameBlocDiDto.use(providersContextLocator),
                ),
              ),
            ];

            final otherProviders = <SingleChildWidget>[];

            return MultiBlocProvider(
              providers: [
                ...initialProviders,
                ...otherProviders,
              ],
              child: MultiProvider(
                providers: [
                  ChangeNotifierProvider(
                    create: (final context) => AppSettingsNotifier.use(
                      context.read,
                    ),
                  ),
                ],
                child: Builder(
                  builder: (final context) {
                    providersContextLocator = context.read;
                    return widget.child;
                  },
                ),
              ),
            );
          },
        ),
      );
}
