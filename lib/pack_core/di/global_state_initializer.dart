import 'package:word_by_word_game/common_imports.dart';

class PreloadingScreen extends StatefulWidget {
  const PreloadingScreen({super.key});

  @override
  State<PreloadingScreen> createState() => _PreloadingScreenState();
}

class _PreloadingScreenState extends State<PreloadingScreen> {
  final _initializer = GlobalStateInitializer();
  @override
  void initState() {
    super.initState();
    unawaited(_initializer.onLoad(context));
  }

  @override
  void dispose() {
    super.dispose();
    _initializer.dispose();
  }

  @override
  Widget build(final BuildContext context) => const LoadingScreen();
}

class GlobalStateInitializer implements StateInitializer, Disposable {
  @override
  Future<void> onLoad(final BuildContext context) async {}

  @override
  void dispose() {}
}
