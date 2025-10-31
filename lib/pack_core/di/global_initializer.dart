import 'package:firebase_core/firebase_core.dart';

class GlobalInitializerImpl {
  GlobalInitializerImpl();
  Future<void> load({final FirebaseOptions? firebaseOptions}) async {
    if (firebaseOptions == null) return;
  }

  void dispose() {}
}
