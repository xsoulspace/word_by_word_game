import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../data_sources/data_sources.dart';
import 'base_repository.dart';

final class DictionariesRespository
    extends BaseLocalRepository<DictionariesLocalDataSource> {
  DictionariesRespository(final BuildContext context)
      : super(
          local: DictionariesLocalDataSourceImpl(
            localDb: context.read(),
            assetBundle: DefaultAssetBundle.of(context),
          ),
        );
  late final loadDictionary = local.loadDictionary;
  late final saveDictionary = local.saveDictionary;
  late final preloadWrongWordsDictionary = local.preloadWrongWordsDictionary;
  late final verifyWord = local.verifyWord;
}
