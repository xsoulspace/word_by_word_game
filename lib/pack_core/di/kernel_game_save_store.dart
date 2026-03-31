import 'package:universal_storage_sync/universal_storage_sync.dart';
import 'package:wbw_core/wbw_core.dart';

/// StorageKernel adapter for game save document persistence.
final class KernelGameSaveStore implements GameSaveStore {
  KernelGameSaveStore({
    required final StorageKernel storageKernel,
    this.namespace = StorageNamespace.saves,
    this.writeMessage = 'Persist game save state',
  }) : _storageKernel = storageKernel;

  final StorageKernel _storageKernel;
  final StorageNamespace namespace;
  final String writeMessage;

  @override
  Future<String?> readSave({required final String path}) =>
      _storageKernel.read(namespace: namespace, path: path);

  @override
  Future<void> writeSave({
    required final String path,
    required final String content,
  }) async {
    await _storageKernel.write(
      namespace: namespace,
      path: path,
      content: content,
      message: writeMessage,
    );
  }
}
