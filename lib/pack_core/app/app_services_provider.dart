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
      BlocProvider<DebugBloc>(create: (final context) => DebugBloc()),
      BlocProvider<WorldLocationBloc>(
        create: (final context) => WorldLocationBloc(),
      ),
      BlocProvider<WorldBloc>(
        create: (final context) => WorldBloc(read: context.read),
      ),
      BlocProvider<ResourcesBloc>(create: (final context) => ResourcesBloc()),
      BlocProvider<UnitsBloc>(create: (final context) => UnitsBloc()),
      BlocProvider<MissionsBloc>(create: (final context) => MissionsBloc()),
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
