/// Yandex Games store contribution — adopted into this app per ADR-0010
/// (the project owns its composition; ADR-0016 W3 pilot).
///
/// Copied from `oka/packages/oka_web/example/yandex_games/` and composed in
/// `tool/oka_pipeline.dart`. Everything the long-lived `release/ya-games`
/// branch hand-patches into `web/index.html` is expressed here as typed,
/// const-constructible, phase-ordered entries.
///
/// Ordering constraints encoded by phases ([WebHeadPhase]):
///
/// 1. `preconnect` — warm the origins the SDK and ads loader hit, before
///    anything requests them.
/// 2. `storeSdk` — the Yandex Games SDK script; it must load before app
///    glue, and it defines the `YaGames` global (declared via
///    [WebScriptEntry.requiredSdkGlobal] so `oka doctor` / the shell gate
///    can reconcile build-time knowledge with the runtime adapter's
///    `expectedSdkGlobal: 'YaGames'` instead of duplicating it).
/// 3. `app` — the Yandex RTB ads harness (`context.js` loader, the
///    `yaContextCb` bootstrap queue, and the fullscreen AdvManager render
///    block), typed by config.
library;

// meta comes transitively via oka_web (annotations only, no runtime dep).
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:oka_web/oka_web.dart';

/// Default Yandex RTB fullscreen block id — the production value used by
/// this app (`R-A-1966126-22`).
///
/// Override via [YandexGamesShellContribution.blockId] — a block id is
/// per-app/per-ad-slot state owned by the Yandex publisher account, never
/// baked into oka.
const String defaultYandexRtbFullscreenBlockId = 'R-A-1966126-22';

/// The Yandex Games store contribution (ADR-0016 W3 pilot).
///
/// Const-constructible; composed explicitly in `tool/oka_pipeline.dart`:
///
/// ```dart
/// const target = WebShellTarget(
///   spec: webShellSpec,
///   contributions: [YandexGamesShellContribution()],
///   emitter: InjectShellEmitter(),
/// );
/// ```
///
/// Config surface (all optional, all typed):
///
/// - [blockId] — the RTB fullscreen ad block id (default:
///   [defaultYandexRtbFullscreenBlockId]).
/// - [platform] — the AdvManager `platform` value (`'desktop'` or
///   `'touch'`; Yandex picks the ad creative by device class). Apps whose
///   ads config differs per form factor compose two contributions with
///   different values instead of editing HTML.
/// - [includeRtbAds] — set `false` for builds without the RTB harness
///   (e.g. during ads debugging or in a store variant that must stay
///   ad-free). This is the typed replacement for the branch's
///   comment-out-a-`<script>`-block workflow.
@immutable
class YandexGamesShellContribution extends WebShellContribution {
  /// Const constructor — compose with explicit, reviewed values.
  const YandexGamesShellContribution({
    this.blockId = defaultYandexRtbFullscreenBlockId,
    this.platform = 'desktop',
    this.includeRtbAds = true,
  })  : assert(
          blockId != '',
          'blockId must be non-empty — use the Yandex publisher account '
          'value (e.g. "R-A-1966126-22")',
        ),
        assert(
          platform != '',
          'platform must be non-empty — "desktop" or "touch"',
        );

  /// Yandex Games SDK script URL (`v2` — the current long-lived SDK).
  static const String sdkUrl = 'https://yandex.ru/games/sdk/v2';

  /// The global the SDK script defines. Declared here (build time) so
  /// doctor/gates can check the runtime adapter's `expectedSdkGlobal`
  /// against the shell instead of trusting two independent sources.
  static const String requiredSdkGlobal = 'YaGames';

  /// Yandex RTB ads loader script URL.
  static const String rtbLoaderUrl = 'https://yandex.ru/ads/system/context.js';

  /// The RTB fullscreen ad block id (rendered into the AdvManager block).
  final String blockId;

  /// The AdvManager `platform` value (`'desktop'` by default).
  final String platform;

  /// Whether the RTB ads harness entries are contributed at all.
  final bool includeRtbAds;

  /// The inline fullscreen-adv render block, typed by [blockId] /
  /// [platform]. Pushed onto `yaContextCb` so it executes after the
  /// (async) loader is ready regardless of declaration order.
  @visibleForTesting
  String get fullscreenAdScript => '''
window.yaContextCb.push(() => {
  Ya.Context.AdvManager.render({
    blockId: '$blockId',
    type: 'fullscreen',
    platform: '$platform',
  });
});'''
      .trim();

  @override
  List<WebHeadEntry> get head => [
        // Phase 1 — preconnect: the two origins the SDK + ads loader hit.
        const WebLinkEntry(
          rel: 'preconnect',
          href: 'https://yandex.ru/games/',
          phase: WebHeadPhase.preconnect,
        ),
        if (includeRtbAds)
          const WebLinkEntry(
            rel: 'preconnect',
            href: 'https://yandex.ru/ads/',
            phase: WebHeadPhase.preconnect,
          ),
        // Phase 2 — the store SDK, before anything app-owned touches it.
        const WebScriptEntry(
          src: sdkUrl,
          phase: WebHeadPhase.storeSdk,
          requiredSdkGlobal: requiredSdkGlobal,
        ),
        // Phase 3 — app: the RTB harness. The bootstrap queue MUST be
        // declared before the loader (Yandex RTB requirement — callbacks
        // pushed before `context.js` executes must not be lost); within
        // the app phase, declaration order is preserved by the shell
        // composition.
        if (includeRtbAds) ...[
          // `phase` defaults to WebHeadPhase.app — declared without it.
          const WebScriptEntry(
            content: 'window.yaContextCb = window.yaContextCb || [];',
          ),
          const WebScriptEntry(src: rtbLoaderUrl, async: true),
          WebScriptEntry(content: fullscreenAdScript),
        ],
      ];

  /// No PWA manifest override — deliberately.
  ///
  /// Yandex Games serves the game inside its own site chrome (an iframe on
  /// `yandex.ru`), so manifest `display`/`orientation` have no effect
  /// there; overriding them "because store" would silently change the
  /// manifest for every other deployment target composed with this
  /// contribution (ADR-0010: explicit composition, no hidden merging).
  @override
  PwaManifestOverride? get manifest => null;

  @override
  String toString() => 'YandexGamesShellContribution(blockId: $blockId, '
      'platform: $platform, includeRtbAds: $includeRtbAds)';
}
