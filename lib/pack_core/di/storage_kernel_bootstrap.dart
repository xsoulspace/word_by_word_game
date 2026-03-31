import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:universal_storage_filesystem/universal_storage_filesystem.dart';
import 'package:universal_storage_local_db/universal_storage_local_db.dart';
import 'package:universal_storage_sync/universal_storage_sync.dart';
import 'package:xsoulspace_foundation/xsoulspace_foundation.dart';

/// Bootstraps StorageKernel rollout for Word by Word Game (G5).
final class WordByWordStorageKernelBootstrap {
  WordByWordStorageKernelBootstrap({
    this.enabled = true,
    this.storageRootPath = './.us_word_by_word_game',
    this.webLocalDb,
  });

  final bool enabled;
  final String storageRootPath;
  final LocalDbI? webLocalDb;

  StorageProfileLoadResult? _loadResult;
  Object? _lastError;
  StackTrace? _lastStackTrace;
  LocalDbI? _resolvedWebLocalDb;

  bool get isReady => _loadResult != null;

  StorageKernel get kernel {
    final loadResult = _loadResult;
    if (loadResult == null) {
      throw StateError(
        'WordByWord storage kernel is not initialized. '
        'Call initialize() before reading kernel.',
      );
    }
    return loadResult.kernel;
  }

  StorageProfile? get profile => _loadResult?.profile;
  Object? get lastError => _lastError;
  StackTrace? get lastStackTrace => _lastStackTrace;

  Future<void> initialize() async {
    if (!enabled) {
      throw StateError('WordByWordStorageKernelBootstrap is disabled.');
    }
    if (isReady) {
      return;
    }

    try {
      const profile = StorageProfile(
        name: 'word_by_word_game_g5',
        namespaces: <StorageNamespaceProfile>[
          StorageNamespaceProfile(
            namespace: _settingsNamespace,
            policy: StoragePolicy.localOnly,
            pathPrefix: 'settings',
          ),
          StorageNamespaceProfile(
            namespace: _savesNamespace,
            policy: StoragePolicy.localOnly,
            pathPrefix: 'saves',
          ),
          StorageNamespaceProfile(
            namespace: _dictionaryNamespace,
            policy: StoragePolicy.localOnly,
            pathPrefix: 'dictionary',
          ),
        ],
        metadata: <String, dynamic>{
          'rollout_gate': 'G5',
          'sync_interaction_level': 'minimal',
        },
      );

      final service = kIsWeb
          ? StorageService(
              LocalDbStorageProvider(localDb: await _resolveWebLocalDb()),
            )
          : StorageService(FileSystemStorageProvider());
      await service.initializeWithConfig(_buildConfig());

      final loadResult = await const StorageProfileLoader().load(
        profile: profile,
        serviceFactory: (final _) async => service,
      );
      await loadResult.kernel.write(
        namespace: _settingsNamespace,
        path: '_rollout/kernel_bootstrap.json',
        content: jsonEncode(<String, dynamic>{
          'initialized_at_utc': DateTime.now().toUtc().toIso8601String(),
          'storage_root': storageRootPath,
          'backend': kIsWeb ? 'local_db' : 'filesystem',
        }),
        message: 'Initialize G5 storage kernel bootstrap',
      );

      _loadResult = loadResult;
      _lastError = null;
      _lastStackTrace = null;
    } on Object catch (error, stackTrace) {
      _lastError = error;
      _lastStackTrace = stackTrace;
      debugPrint(
        'WordByWordStorageKernelBootstrap.initialize failed: '
        '$error\n$stackTrace',
      );
      rethrow;
    }
  }

  Future<LocalDbI> _resolveWebLocalDb() async {
    final cached = _resolvedWebLocalDb;
    if (cached != null) {
      return cached;
    }
    final resolved = webLocalDb ?? PrefsDb();
    await resolved.init();
    _resolvedWebLocalDb = resolved;
    return resolved;
  }

  FileSystemConfig _buildConfig() => FileSystemConfig.fromFilePathConfig(
    FilePathConfig.create(
      path: storageRootPath,
      macOSBookmarkData: const MacOSBookmark(''),
    ),
    databaseName: 'word_by_word_game',
  );

  static const _settingsNamespace = StorageNamespace.settings;
  static const _savesNamespace = StorageNamespace.saves;
  static const _dictionaryNamespace = StorageNamespace('dictionary');
}
