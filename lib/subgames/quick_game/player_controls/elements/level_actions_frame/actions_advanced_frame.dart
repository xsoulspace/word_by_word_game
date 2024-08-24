import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wbw_core/wbw_core.dart';
import 'package:wbw_design_core/wbw_design_core.dart';
import 'package:word_by_word_game/pack_core/global_states/global_states.dart';
import 'package:word_by_word_game/subgames/quick_game/overlays/gui_widgets/weather_bar.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/actions_simple_frame.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/focused_object_actions_view.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/heat_engine_view.dart';

class UIActionFrameAdvanced extends StatelessWidget with TechLevelMixin {
  const UIActionFrameAdvanced({super.key});

  @override
  Widget build(final BuildContext context) {
    final (
      isUnblocked: isPoweringEngineAvailable,
      isPlaying: _,
      isAdvancedGame: _
    ) = useTechLevelAvailable(context, TechnologyLevelIndex.poweringEngine);
    final uiTheme = context.uiTheme;
    final locale = useLocale(context);
    final textTheme = context.textTheme;
    final playersBloc = context.watch<LevelPlayersBloc>();
    final isPlayerFocused = playersBloc.isPlayerFocused;
    final isTentFocused =
        playersBloc.focusedObject.tileId.value.contains('tent');
    final hotAirBalloonActions = [
      if (isPoweringEngineAvailable)
        (
          title: const LocalizedMap(
            value: {
              Languages.en: 'Flying Energy',
              Languages.ru: 'Энергия полета',
              Languages.it: 'Energia di volo',
            },
          ),
          iconChildren: [
            Image.asset(
              UiAssetHelper.useImagePath(UiIcons.fire.path),
              width: 24,
              height: 24,
            ),
          ],
          tabView: const Center(child: UiEnergyCards()),
          // Text(
          //   ,
          //   style: textTheme.titleSmall?.copyWith(
          //     color: context.colorScheme.tertiary.withOpacity(0.9),
          //   ),
          // ),
        ),
      (
        title: const LocalizedMap(
          value: {
            Languages.en: 'Actions',
            Languages.ru: 'Действия',
            Languages.it: 'Azioni',
          },
        ),
        iconChildren: [
          const Icon(CupertinoIcons.book, size: 18),
          const Gap(2),
        ],
        tabView: const _ActionsTabView(),
      ),
    ];
    final tentActions = [
      (
        title: const LocalizedMap(
          value: {
            Languages.en: 'Actions',
            Languages.ru: 'Действия',
            Languages.it: 'Azioni',
          },
        ),
        iconChildren: [
          const Icon(CupertinoIcons.book, size: 18),
          const Gap(2),
        ],
        tabView: const TentActionsView(),
      ),
    ];

    final views = [
      if (isPlayerFocused) ...hotAirBalloonActions.map((final e) => e.tabView),
      if (isTentFocused) ...tentActions.map((final e) => e.tabView),
      // const _TechnologyTabView(),
    ];
    final tabs = [
      if (isPlayerFocused) ...hotAirBalloonActions,
      if (isTentFocused) ...tentActions,
      // (
      //   title: const LocalizedMap(
      //     value: {
      //       Languages.en: 'Technologies',
      //       Languages.ru: 'Технологии',
      //       Languages.it: 'Tecnologie',
      //     },
      //   ),
      //   iconChildren: [
      //     const Icon(CupertinoIcons.lab_flask, size: 18),
      //     const Gap(2),
      //   ],
      //   tabView: const SizedBox(),
      // ),
    ];

    return DefaultTabController(
      length: tabs.length,
      child: Builder(
        builder: (final context) => Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 120),
              child: TabBarView(children: views),
            ),
            TabBar(
              tabAlignment: TabAlignment.center,
              padding: EdgeInsets.zero,
              isScrollable: true,
              tabs: tabs
                  .mapIndexed(
                    (final index, final e) => Tab(
                      height: 36,
                      child: FocusableActionDetector(
                        onShowHoverHighlight: (final isHovered) {
                          if (isHovered) {
                            DefaultTabController.of(context).animateTo(index);
                          }
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ...e.iconChildren,
                                Text(e.title.getValue(locale)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class _ActionsTabView extends StatelessWidget {
  const _ActionsTabView({super.key});

  @override
  Widget build(final BuildContext context) => const Row(
        children: [
          Flexible(child: HeatEngineView()),
          HotAirBaloonActionsView(),
        ],
      );
}
