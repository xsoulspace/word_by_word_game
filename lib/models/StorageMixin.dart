import 'package:word_by_word_game/utils/storage_util.dart';

mixin StorageMixin {
  StorageUtil storage;

  Future<void> checkAndLoadStorageInstance() async {
    if (storage == null) {
      await StorageUtil.getInstance().then((inst) => storage = inst);
    }
  }
}
