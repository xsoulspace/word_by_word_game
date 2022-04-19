library pack_game;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/_abstract/abstract.dart';
import 'package:word_by_word_game/_library/hooks/hooks.dart';
import 'package:word_by_word_game/generated/l10n.dart';
import 'package:word_by_word_game/pack_navigation/pack_navigation.dart';
import 'package:word_by_word_game/pack_preloaders/pack_preloaders.dart';
import 'package:word_by_word_game/pack_settings/pack_settings.dart';

part '_services/game_service.dart';
part '_states/game_state_notifier.dart';
part '_widgets/upper_game_bar.dart';
part 'game_book_shelf/game_book_shelf_screen.dart';
part 'game_book_shelf/game_book_shelf_screen_state.dart';
part 'game_scaffold.dart';
part 'game_word_writer/game_book_writer_screen.dart';
part 'game_word_writer/game_book_writer_screen_state.dart';
part 'menu/pause_menu_screen.dart';
part 'menu/pause_menu_screen_state.dart';
part 'menu/start_game_screen.dart';
part 'menu/start_game_screen_state.dart';
part 'word_by_word_game.dart';
