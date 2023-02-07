import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: implementation_imports
import 'package:flutter_bloc/src/bloc_provider.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_core/pack_core.dart';
import 'package:word_by_word_game/pack_game/ads/states/ad_manager.dart';

class AppServicesProviderDiDto {
  AppServicesProviderDiDto({
    required this.analyticsNotifier,
  });
  final AnalyticsNotifier analyticsNotifier;
}

class AppServicesProvider extends StatelessWidget {
  const AppServicesProvider({
    required this.diDto,
    required this.child,
    super.key,
  });
  final Widget child;
  final AppServicesProviderDiDto diDto;
  @override
  Widget build(final BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (final context) => diDto.analyticsNotifier,
        ),
        Provider<ServicesCollection>(
          create: (final context) => ServicesCollection.v1,
        ),
        Provider<MechanicsCollection>(
          create: (final context) => MechanicsCollection.v1,
        ),
        Provider(create: (final context) => AdManager())
      ],
      child: Builder(
        builder: (final context) {
          late Locator providersContextLocator;
          final initialProviders = <BlocProviderSingleChildWidget>[
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
            BlocProvider<ResourcesBloc>(
              create: (final context) => ResourcesBloc(
                diDto: ResourcesBlocDiDto.use(providersContextLocator),
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

          final otherProviders = <BlocProviderSingleChildWidget>[];

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
                  return child;
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
