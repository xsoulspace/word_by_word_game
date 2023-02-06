library pack_settings;

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:life_hooks/life_hooks.dart';
import 'package:word_by_word_game/_abstract/abstract.dart';
import 'package:word_by_word_game/_utils/utils.dart';
import 'package:word_by_word_game/generated/l10n.dart';

part '_migration/a_migration_service.dart';
part '_migration/migration_service_i.dart';
part '_services/general_settings_service.dart';
part '_services/general_settings_service_i.dart';
part '_services/profile_service.dart';
part '_services/profile_service_i.dart';
part '_states/game_loading_statuses.dart';
part '_states/general_settings_notifier.dart';
part '_states/profile_notifier.dart';
part '_states/profile_notifier_i.dart';
part 'settings/settings_screen.dart';
part 'settings/settings_screen_state.dart';
