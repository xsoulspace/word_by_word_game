import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: implementation_imports
import 'package:flutter_bloc/src/bloc_provider.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';

class AppServicesProvider extends StatelessWidget {
  const AppServicesProvider({
    required this.child,
    final Key? key,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(final BuildContext context) {
    final initialProviders = <BlocProviderSingleChildWidget>[
      BlocProvider<LevelBloc>(create: (final context) => LevelBloc()),
      BlocProvider<ResourcesBloc>(create: (final context) => ResourcesBloc()),
    ];

    final otherProviders = <BlocProviderSingleChildWidget>[];

    return MultiBlocProvider(
      providers: [
        ...initialProviders,
        ...otherProviders,
      ],
      child: child,
    );
  }
}
