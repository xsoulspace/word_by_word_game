import 'package:flutter/material.dart';

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
  Widget build(final BuildContext context) => const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgress(),
          ],
        ),
      );
}

class CircularProgress extends StatelessWidget {
  const CircularProgress({super.key});

  @override
  Widget build(final BuildContext context) =>
      const CircularProgressIndicator.adaptive();
}
