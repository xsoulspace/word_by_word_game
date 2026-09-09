/// The app's oka composition root (ADR-0010: the project owns its
/// composition; discovered by convention as `tool/oka_pipeline.dart`).
///
/// Web store configuration lives HERE, in typed Dart — replacing the
/// long-lived `release/ya-games` branch whose only purpose was per-store
/// `web/` diffs (Yandex Games SDK script, Yandex RTB ads harness, store
/// title/meta). See ADR-0016 (`oka/docs/decisions/0016-...`) and the
/// migration map in `oka/packages/oka_web/example/yandex_games/MIGRATION.md`.
///
/// Commands:
///
/// ```bash
/// oka explain               # validated plan + composed-shell render, no I/O
/// oka run web-shell         # compose + inject the shell into web/index.html
/// oka run web-build         # flutter build web (explicit, named delegation)
/// oka explain --targets     # describe each composed target's step chain
/// ```
///
/// Emitter choice: this app hand-maintains `web/index.html` (CSP meta,
/// loading UI, styles) — the `inject` emitter is the migration path; it
/// rewrites ONLY the marker-delimited regions and preserves everything
/// else byte-for-byte. `web/manifest.json` is NOT owned by oka in this
/// mode; the hand-maintained file stays the source of truth.
library;

// oka_core comes transitively via oka_web (okaRun + Oka composition root).
// ignore: depend_on_referenced_packages
import 'package:oka_core/oka_core.dart';
import 'package:oka_web/oka_web.dart';

import 'web/yandex_games_contribution.dart';

/// The project web shell spec — mirrors the hand-maintained
/// `web/index.html` identity and `web/manifest.json` fields (declared, not
/// generated; the inject emitter does not rewrite either file).
const WebShellSpec webShellSpec = WebShellSpec(
  title: 'Word by Word: Adventure',
  description:
      'Simple & fun game to write word based on last 3 letters of last word',
  themeColor: '#FCFDF6',
  backgroundColor: '#FCFDF6',
  icons: WebIconSpec(
    icon192: 'icons/Icon-192.png',
    icon512: 'icons/Icon-512.png',
    favicon: 'favicon.png',
  ),
  manifest: PwaManifestSpec(
    name: 'WordByWord',
    shortName: 'Word by Word: Adventure',
    themeColor: '#FCFDF6',
    backgroundColor: '#FCFDF6',
    description:
        'Word Arcade -> write word based on last 3 letters of last word '
        '& pass Landscape',
  ),
);

/// The Yandex Games store contribution (SDK script + RTB ads harness).
const YandexGamesShellContribution yandexGames = YandexGamesShellContribution();

/// `oka run web-shell` — compose + inject the shell into the hand-tuned
/// `web/index.html` between the `<!-- oka:begin:head -->` /
/// `<!-- oka:end:head -->` markers; everything outside the markers stays
/// byte-identical.
const WebShellTarget webShell = WebShellTarget(
  spec: webShellSpec,
  contributions: [yandexGames],
  emitter: InjectShellEmitter(),
);

/// `oka run web-build` — an explicit, honest delegation to
/// `flutter build web`; base href + dart-defines compose from the same
/// contribution values (no second source of truth).
const WebBuildTarget webBuild = WebBuildTarget(
  contributions: [yandexGames],
);

/// `oka run publish-gh-pages` — deploy `build/web` to `origin/gh-pages`
/// (replaces the manual gh-pages branch workflow). Destructive and
/// ambient-auth — `dryRun` defaults to `true`; the explicit
/// `dryRun: false` flip is the "this machine may really push" decision.
/// Composed here so `oka explain --targets` shows it; never run casually.
const GhPagesDeployTarget publishGhPages = GhPagesDeployTarget();

Future<void> main(final List<String> args) => okaRun(
      args,
      oka: const Oka(
        pipelines: [],
        targets: [webShell, webBuild, publishGhPages],
      ),
    );
