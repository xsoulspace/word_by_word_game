# Word by Word Game Offline

[![GitHub](https://img.shields.io/github/license/xsoulspace/word_by_word_game)](LICENSE)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](CODE_OF_CONDUCT.md)
[![Discord](https://img.shields.io/discord/696688204476055592.svg)](https://discord.com/invite/y54DpJwmAn)

<p align="center">
<a href="https://snapcraft.io/word-by-word-game"><img alt="Get it from the Snap Store" src="https://snapcraft.io/static/images/badges/en/snap-store-black.svg" /></a>
<a href='https://play.google.com/store/apps/details?id=dev.xsoulspace.word_by_word_game'><img alt='Get it on Google Play' src='https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png' height="90px"/></a>
</p>

## About the Game

Well, imagine mix: fun of remembering words with excitement of 2D adventure using hot air balloon flying over pixel art landscapes🎈✨

It is a world where every word you make helps your hot air balloon fly. The gameplay is simple: use the last three letters of the previous word to create a new one and keep your journey going with a help of unpredictable and tricky weather and word inspirer. How far your curiosity and thinking will take you?

[Early Gameplay Trailer](https://youtube.com/playlist?list=PLz4tcEeusgWJeJO6RvOxOkfD3XE1pDKFg)

### Cool Things About the Game

- 🌍 Play in Different Languages: Test your skills in English and Russian, with more languages on the horizon!
- 🎭 Party Mode: Have fun with your buddies on the same device!
- 🌦️ Changing Weather: Every game is different - challenge yourself with tricky storms and calm skies!
- 💾 Save Your Progress: The game remembers where you left off - take a break and come back anytime!
- 🧠 Learn New Words: Discover cool words while having fun - it's like a game and a lesson in one!
- 🎨 Vibrant Pixel Art: Enjoy simplicity of pixel art landscapes and characters as you play!

Word by Word isn't just a game - it's a fun trip through words, creativity, and adventure. It's perfect for word lovers, casual gamers, and anyone who wants to try something new and exciting. Download now and let your imagination soar! 🚀📚

If you like the concept but feel the game currently lacks features, don't worry - this game keeps evolving already over 4 years and will continue to do so. Keep the game installed and check for updates from time to time.

Thank you for your support, and I hope you enjoy your word-filled adventure! Have a fantastic day! 🎈🌄

### Development Status

The game is developing by a solo indie developer (@Arenukvern). You can follow the progress on:

- [DevLog on itch.io](https://arenukvern.itch.io/word-by-word-game)
- [Video updates on YouTube](https://youtube.com/playlist?list=PLz4tcEeusgWJeJO6RvOxOkfD3XE1pDKFg)

## Getting Started

### Installation

1. Get the game from:

   - [Snap Store](https://snapcraft.io/word-by-word-game)
   - [Google Play](https://play.google.com/store/apps/details?id=dev.xsoulspace.word_by_word_game)

2. Launch the game and start your word adventure!

## For Developers

### Project Structure

- `packages/`
  - `wbw_core/`: Core game logic and data models
  - `wbw_design_core/`: UI components and theming
  - `map_editor/`: Map creation and editing tools
  - `wbw_dictionaries/`: Word dictionaries and language support
  - `wbw_locale/`: Localization and translations
  - `wbw_server/`: Server-side components
  - `pixel_art_creator/`: Pixel art creation tools

### Setup

1. Prerequisites

   - Flutter SDK [3.24.2 or later](https://docs.flutter.dev/get-started/install)
   - Dart [3.5.2 or later](https://dart.dev/get-dart)

2. Installation

   ```bash
   git clone https://github.com/xsoulspace/word_by_word_game.git
   cd word_by_word_game
   flutter pub get
   ```

3. Running the project
   ```bash
   flutter run
   ```

### Documentation

- [Architecture Overview](docs/development/architecture.md)
- [Game Mechanics](docs/development/game-mechanics.md)

## Contributing

We welcome contributions! Here's how you can help:

1. Fork the repository
2. Create a new branch: `git checkout -b feature/your-feature-name`
3. Make your changes and commit them: `git commit -m 'Add some feature'`
4. Push to the branch: `git push origin feature/your-feature-name`
5. Submit a pull request

Please read our [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines.
Make sure to follow our [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md).

### Special Thanks to Contributors

- @mixv - Extensive testing and feedback from the first release | [GitHub](https://github.com/mixv)
- @albanobattistella - Initial Italian translation (v1) | [GitHub](https://github.com/albanobattistella)

## Support the development

- Star the [GitHub repository](https://github.com/xsoulspace/word_by_word_game)
<!-- - Donate on [Boosty](https://boosty.to/arenukvern) or [Patreon](https://patreon.com/arenukvern) -->

## Community and Support

- Join our [Discord Community](https://discord.gg/y54DpJwmAn) for help, ideas, and bug reports
- LICENSE [here](LICENSE)
- Read our [Privacy Policy & Terms and Conditions](https://docs.page/xsoulspace/word_by_word_game)

## Credits

- Evening Graphics (not released yet): [Sonnenstein](https://sonnenstein.itch.io/)
- Early development assets (v3): [Pixel Frog](https://pixelfrog-assets.itch.io/treasure-hunters)

## Additional Resources

- Color palette: [lospec.com/palette-list/na16](https://lospec.com/palette-list/na16)
- Procedural map generation info: [YouTube Tutorial](https://www.youtube.com/watch?v=qYomF9p_SYM&t=9116s)

---

Built with Flutter & Dart 💙 | Managed with [melos](https://melos.invertase.dev)
