import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key});

  @override
  Widget build(final BuildContext context) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [Text(r'At least it works ¯\_(ツ)_/¯')],
        ),
      );
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(final BuildContext context) => Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
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
