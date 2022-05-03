library utils;

import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:universal_io/io.dart';
import 'package:uuid/uuid.dart';

part 'abstract_util.dart';
part 'extensions/change_notifier_extension.dart';
part 'extensions/list_extension.dart';
part 'extensions/map_extension.dart';
part 'id_creator.dart';
part 'is_desktop.dart';
part 'local_db/db_store.dart';
part 'local_db/local_db_i.dart';
part 'local_db/sembast_db.dart';
part 'randomer.dart';
part 'shared_preferences_keys.dart';
part 'shared_preferences_util.dart';
part 'uuid_util.dart';
