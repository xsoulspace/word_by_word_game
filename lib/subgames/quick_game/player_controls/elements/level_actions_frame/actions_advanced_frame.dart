import 'package:flutter/cupertino.dart';
import 'package:word_by_word_game/common_imports.dart';
import 'package:word_by_word_game/subgames/quick_game/overlays/gui_widgets/weather_bar.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/actions_simple_frame.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/focused_object_actions_view.dart';
import 'package:word_by_word_game/subgames/quick_game/player_controls/elements/level_actions_frame/heat_engine_view.dart';
import 'package:word_by_word_game/subgames/subgames.dart';

class UIActionFrameAdvanced extends StatelessWidget with TechLevelMixin {
  const UIActionFrameAdvanced({super.key});

  @override
  Widget build(final BuildContext context) {
    final locale = useLocale(context);
    final playersBloc = context.watch<LevelPlayersBloc>();
    final isPlayerFocused = playersBloc.isPlayerFocused;
    final isTentFocused = playersBloc.focusedObject.tileId.value.contains(
      'tent',
    );
    final isPoweringEngineAvailable = context.select<TechnologiesCubit, bool>(
      (final cubit) =>
          cubit.isTechLevelUnlocked(TechnologyLevelIndex.takeOffAndLanding),
    );
    final hotAirBalloonActions = [
      (
        title: LocalizedMap({
          uiLanguages.en: 'Flying Energy',
          uiLanguages.ru: 'Энергия полета',
          uiLanguages.it: 'Energia di volo',
        }),
        iconChildren: [
          Image.asset(
            UiAssetHelper.useImagePath(UiAssetsIcons.fire.path),
            width: 24,
            height: 24,
          ),
        ],
        tabView: const Center(child: UiEnergyCards()),
        // Text(
        //   ,
        //   style: textTheme.titleSmall?.copyWith(
        //     color: context.colorScheme.tertiary.withValues(alpha:0.9),
        //   ),
        // ),
      ),
      if (isPoweringEngineAvailable)
        (
          title: LocalizedMap({
            uiLanguages.en: 'Actions',
            uiLanguages.ru: 'Действия',
            uiLanguages.it: 'Azioni',
          }),
          iconChildren: [
            const Icon(CupertinoIcons.book, size: 18),
            const Gap(2),
          ],
          tabView: const _ActionsTabView(),
        ),
    ];
    final tentActions = [
      (
        title: LocalizedMap({
          uiLanguages.en: 'Actions',
          uiLanguages.ru: 'Действия',
          uiLanguages.it: 'Azioni',
        }),
        iconChildren: [const Icon(CupertinoIcons.book, size: 18), const Gap(2)],
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
            Row(
              children: [
                Expanded(
                  child: TabBar(
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
                                  DefaultTabController.of(
                                    context,
                                  ).animateTo(index);
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
                ),
                const Gap(8),
                const UiPauseButton(),
                const Gap(8),
              ],
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
