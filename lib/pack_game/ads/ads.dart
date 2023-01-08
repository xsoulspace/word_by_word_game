import 'package:flutter/foundation.dart';
import 'package:universal_io/io.dart';
import 'package:word_by_word_game/envs.dart';

export 'widgets/widgets.dart';

bool get kIsAdsEnabled => Platform.isAndroid && !kIsWeb && !kMarketingMode;
