import 'dart:convert';
import 'dart:math' as math;

import 'package:flame/cache.dart';
import 'package:flame/events.dart';
import 'package:flame/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:map_editor/generated/assets.gen.dart';
import 'package:map_editor/logic/logic.dart';
import 'package:map_editor/state/models/models.dart';
import 'package:map_editor/state/models/preset_resources/preset_resources.dart';
import 'package:map_editor/ui/renderer/editor/editor.dart';
import 'package:map_editor/ui/renderer/renderer.dart';
import 'package:map_editor/ui/renderer/resources_loader.dart';
import 'package:provider/provider.dart';
import 'package:wbw_core/wbw_core.dart';

export 'di/di.dart';

part 'blocs/editor/drawer_cubit.dart';
part 'blocs/editor/drawer_cubit_states.dart';
part 'blocs/editor/map_editor_bloc_states.dart';
part 'blocs/editor/map_editor_cubit.dart';
part 'blocs/world_bloc.dart';
part 'blocs/world_events.dart';
part 'blocs/world_states.dart';
part 'state.freezed.dart';
