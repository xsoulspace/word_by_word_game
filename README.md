# Word by Word Game offline

[![GitHub](https://img.shields.io/github/license/xsoulspace/word_by_word_game)](LICENSE)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](CODE_OF_CONDUCT.md)
<a title="Discord" href="https://discord.com/invite/y54DpJwmAn" ><img src="https://img.shields.io/discord/696688204476055592.svg" /></a>

<p align="center">
<a href="https://snapcraft.io/word-by-word-game">
<img style="margin-bottom: 17px; margin-left: 23px;" alt="Get it from the Snap Store" src="https://snapcraft.io/static/images/badges/en/snap-store-black.svg" />
<a style="margin-bottom: 17px; margin-left: 23px;" href='https://play.google.com/store/apps/details?id=dev.xsoulspace.word_by_word_game&pcampaignid=pcampaignidMKT-Other-global-all-co-prtnr-py-PartBadge-Mar2515-1'><img height="90px"; alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png'/></a>
</a>
</p>

# About

Please note: new version is completely rewritten and is in active development.
Actual DevLog is available on https://arenukvern.itch.io/word-by-word-game and in Discord server https://discord.com/invite/y54DpJwmAn

You can see also short video updates by the link below:
https://youtube.com/playlist?list=PLz4tcEeusgWJeJO6RvOxOkfD3XE1pDKFg

----- Description -----

Control the hot air balloon by entering unique words (within the level) based on the last 3 letters of the last word and bring it as far as you can!

Features:

- There is support for checking words in two languages (Russian and English). But if the word is not in the dictionary - you can add it.
- You can play together with friends on the same device.
- The game remembers the progress - if you press the menu (pause button in the center), the current game will be saved and you can continue later.
- You can learn new words:)

## Have an idea, improvements, or bugs?

Join Discord - https://discord.gg/y54DpJwmAn

Have fun and a great time!

---

<br/>

## Donations / Sponsor

Please sponsor or donate to the creator on [Boosty](https://boosty.to/arenukvern) or [CloudTips](https://pay.cloudtips.ru/p/1629cd27).

Thank you for your support and have a great day! 🌄

## Contributing

All [comments](https://github.com/xsoulspace/word_by_word_game/issues) and [pull requests](https://github.com/xsoulspace/word_by_word_game/pulls) are welcome.

## Huge thank you for contributions!

[@albanobattistella](https://github.com/albanobattistella)

## Getting Help

If you need help getting started or have any questions, check out our [Discord Community](https://discord.gg/y54DpJwmAn).

## Build

web:
flutter clean && flutter pub get && flutter build web --csp -t lib/main_prod.dart --dart-define="yandex-fullscreen-yg-mobile-web=R-A-1966126-8" --dart-define="yandex-fullscreen-yg-desktop-web=R-A-1966126-19" --dart-define="is-yandex-games=true"

android:
flutter build appbundle --dart-define=""
flutter build apk --dart-define=""

This project uses:

melos to manage packages
https://melos.invertase.dev
dart pub global activate melos

Widgetbook:
https://docs.widgetbook.io/widgetbook/overview
dart pub global activate mason_cli

## Additional Licenses and Insipration Sources:

- color palette - https://lospec.com/palette-list/na16
- temporary tilemap source - https://pixelfrog-assets.itch.io/treasure-hunters
- extremly useful info of procedural map generation - https://www.youtube.com/watch?v=qYomF9p_SYM&t=9116s
