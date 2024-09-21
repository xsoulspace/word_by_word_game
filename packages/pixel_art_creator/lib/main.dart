import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pixel_art_creator/pixel_art_creator.dart';
import 'package:pixel_art_creator/src/providers/pixel_provider.dart';
import 'package:provider/provider.dart';

import 'src/screens/design_system_screen.dart';
import 'src/widgets/common_menu.dart';

void main() => runApp(const PixelArtApp());

final GoRouter _router = GoRouter(
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return Scaffold(
          appBar: AppBar(title: const Text('Pixel Art Creator')),
          body: Column(
            children: [
              const CommonMenu(),
              Expanded(child: child),
            ],
          ),
        );
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const PixelArtCreator(),
        ),
        GoRoute(
          path: '/design-system',
          builder: (context, state) => const DesignSystemScreen(),
        ),
      ],
    ),
  ],
);

class PixelArtApp extends StatelessWidget {
  const PixelArtApp({super.key});

  @override
  Widget build(final BuildContext context) => MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => PixelProvider()),
        ],
        child: MaterialApp.router(
          routerConfig: _router,
          title: 'Pixel Art Creator',
        ),
      );
}
