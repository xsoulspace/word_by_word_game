import 'package:flutter/cupertino.dart';

import '../../wbw_design_core.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key});

  @override
  Widget build(final BuildContext context) => const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Text(r'At least it works ¯\_(ツ)_/¯')],
        ),
      );
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(final BuildContext context) => Container(
        color: BrandColorSchemes.light.background,
        alignment: Alignment.center,
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [UiCircularProgress()],
        ),
      );
}

class UiCircularProgress extends StatelessWidget {
  const UiCircularProgress({super.key});

  @override
  Widget build(final BuildContext context) => Center(
        child:
            CupertinoActivityIndicator(color: BrandColorSchemes.light.primary),
      );
}
