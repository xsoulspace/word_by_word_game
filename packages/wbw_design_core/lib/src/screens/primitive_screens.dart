import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

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
  Widget build(final BuildContext context) => Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          color: UiColors.offWhite,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const FloatingHotAirBalloon(size: 150),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 300),
                child: Row(
                  children: [
                    Flexible(
                      child: Material(
                        child: Text(
                          // TODO(arenukvern): add gifs - tips
                          'Did you know that you can delete letters by clicking them?',
                          style: TextStyle(
                            color: UiColors.dark.withOpacity(0.8),
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                          ),
                        )
                            .animate(delay: 0.5.seconds)
                            .fadeIn(duration: 2.seconds),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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

class FloatingHotAirBalloon extends StatelessWidget {
  const FloatingHotAirBalloon({
    super.key,
    this.size = 100.0,
  });

  final double size;

  @override
  Widget build(final BuildContext context) => Image.asset(
        'packages/map_editor/assets/images/tilesets/white_black/hot_air_balloon__idle_right_0.png',
        height: size,
        width: size,
      )
          .animate(
            onPlay: (final controller) => controller.repeat(reverse: true),
          )
          .fadeIn(duration: 1.5.seconds)
          .moveY(
            begin: 0,
            end: -10,
            duration: 2.3.seconds,
            curve: Curves.easeInOutSine,
          )
          .moveX(
            begin: 50,
            end: 10,
            duration: 5.seconds,
            curve: Curves.easeInOutSine,
          )
          .then()
          .moveY(
            begin: -10,
            end: 10,
            duration: 2.3.seconds,
            curve: Curves.easeInOutSine,
          )
          .moveX(
            begin: 10,
            end: -10,
            duration: 3.seconds,
            curve: Curves.easeInOutSine,
          )
          .then()
          .moveX(
            begin: -10,
            end: -40,
            duration: 4.seconds,
            curve: Curves.easeInOutSine,
          )
          .moveY(
            begin: 10,
            end: -15,
            duration: 2.3.seconds,
            curve: Curves.easeInOutSine,
          )
          .then()
          .moveY(
            begin: -15,
            end: 20,
            duration: 2.9.seconds,
            curve: Curves.easeInOutSine,
          )
          .moveX(
            begin: -10,
            end: -80,
            duration: 3.seconds,
            curve: Curves.easeInOutSine,
          )
          .fadeOut(delay: 1.5.seconds, duration: 1.5.seconds);
}
