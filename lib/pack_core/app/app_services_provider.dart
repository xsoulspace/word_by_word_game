import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: implementation_imports
import 'package:flutter_bloc/src/bloc_provider.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/pack_game/mechanics/mechanics.dart';

class AppServicesProvider extends StatelessWidget {
  const AppServicesProvider({
    required this.child,
    final Key? key,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(final BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<MechanicsCollection>(
          create: (final context) => MechanicsCollection.v1,
        )
      ],
      child: Builder(
        builder: (final context) {
          final initialProviders = <BlocProviderSingleChildWidget>[
            BlocProvider(
              create: (final context) => LevelPlayersBloc(
                diDto: LevelPlayersBlocDiDto.use(context.read),
              ),
            ),
            BlocProvider<LevelBloc>(
              create: (final context) => LevelBloc(
                diDto: LevelBlocDiDto.use(context.read),
              ),
            ),
            BlocProvider<ResourcesBloc>(
              create: (final context) => ResourcesBloc(
                diDto: ResourcesBlocDiDto.use(context.read),
              ),
            ),
            BlocProvider<GlobalGameBloc>(
              create: (final context) => GlobalGameBloc(
                diDto: GlobalGameBlocDiDto.use(context.read),
              ),
            ),
          ];

          final otherProviders = <BlocProviderSingleChildWidget>[];

          return MultiBlocProvider(
            providers: [
              ...initialProviders,
              ...otherProviders,
            ],
            child: child,
          );
        },
      ),
    );
  }
}
