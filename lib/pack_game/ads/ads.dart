import 'package:flutter/foundation.dart';
import 'package:universal_io/io.dart';

export 'widgets/widgets.dart';

bool get kIsAdsEnabled => Platform.isAndroid && !kIsWeb;
