import 'dart:async';

import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states_initializer.dart';

class PreloadingScreen extends StatefulWidget {
  const PreloadingScreen({super.key});

  @override
  State<PreloadingScreen> createState() => _PreloadingScreenState();
}

class _PreloadingScreenState extends State<PreloadingScreen> {
  @override
  void initState() {
    super.initState();
    unawaited(
      GlobalStatesInitializer().onLoad(context),
    );
  }

  @override
  Widget build(final BuildContext context) => const LoadingScreen();
}
