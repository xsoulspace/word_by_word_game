import 'dart:async';

import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states_initializer.dart';
import 'package:word_by_word_game/router.dart';

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
      GlobalStatesInitializer(
        appRouterController: AppPathsController.of(context),
      ).onLoad(context),
    );
  }

  @override
  Widget build(final BuildContext context) => const LoadingScreen();
}
