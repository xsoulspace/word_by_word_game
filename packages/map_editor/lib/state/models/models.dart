import 'dart:math' as math;

import 'package:equatable/equatable.dart';
import 'package:flame/game.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_editor/state/models/preset_models/preset_models.dart';
import 'package:map_editor/state/models/preset_resources/preset_resources.dart';
import 'package:wbw_core/wbw_core.dart';

export 'network_models/network_models.dart';
export 'preset_models/preset_models.dart';
export 'runtime_models/runtime_models.dart';
export 'saveable_models/saveable_models.dart';

part 'canvas/animation_entry.dart';
part 'canvas/canvas_tile.dart';
part 'canvas/game_renderer_config.dart';
part 'canvas/tile_cell.dart';
part 'canvas/tile_data.dart';
part 'editor/editor_game_object.dart';
part 'editor/menu_item.dart';
part 'live/game_object.dart';
part 'live/player_object.dart';
part 'live/render_canvas_object.dart';
part 'live/render_canvas_tile.dart';
part 'models.freezed.dart';
part 'models.g.dart';
