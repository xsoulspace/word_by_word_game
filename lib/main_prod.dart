import 'dart:async';

import 'package:word_by_word_game/bootstrap.dart';
import 'package:word_by_word_game/firebase_options.dart';

Future<void> main() =>
    bootstrap(firebaseOptions: DefaultFirebaseOptions.currentPlatform);
