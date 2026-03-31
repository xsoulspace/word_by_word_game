import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:universal_storage_sync/universal_storage_sync.dart';
import 'package:word_by_word_game/pack_core/di/storage_kernel_bootstrap.dart';

void main() {
  group('WordByWordStorageKernelBootstrap', () {
    test('initializes storage kernel and supports read/write smoke flow', () async {
      final tempDir = await Directory.systemTemp.createTemp(
        'word_by_word_storage_kernel_bootstrap_test_',
      );
      addTearDown(() => tempDir.delete(recursive: true));

      final bootstrap = WordByWordStorageKernelBootstrap(
        storageRootPath: tempDir.path,
      );
      final initialized = await bootstrap.initialize();

      expect(initialized, isTrue);
      expect(bootstrap.isReady, isTrue);
      final kernel = bootstrap.kernel;
      expect(kernel, isNotNull);
      if (kernel == null) {
        fail('Storage kernel should be available after initialization');
      }

      final marker = await kernel.read(
        namespace: StorageNamespace.settings,
        path: '_rollout/kernel_bootstrap.json',
      );
      expect(marker, allOf(isNotNull, contains(tempDir.path)));

      await kernel.write(
        namespace: StorageNamespace.settings,
        path: 'smoke/value.json',
        content: '{"ok":true}',
        message: 'Bootstrap smoke write',
      );
      final value = await kernel.read(
        namespace: StorageNamespace.settings,
        path: 'smoke/value.json',
      );
      expect(value, '{"ok":true}');
    });

    test('returns false when disabled', () async {
      final bootstrap = WordByWordStorageKernelBootstrap(enabled: false);
      final initialized = await bootstrap.initialize();

      expect(initialized, isFalse);
      expect(bootstrap.isReady, isFalse);
      expect(bootstrap.kernel, isNull);
    });
  });
}
