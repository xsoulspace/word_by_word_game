import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../data_sources/data_sources.dart';
import 'base_repository.dart';

final class UserWordsRespository
    extends BaseLocalRepository<UserWordsLocalDataSource> {
  UserWordsRespository(final BuildContext context)
      : super(
          local: UserWordsLocalDataSourceImpl(
            localDb: context.read(),
            assetBundle: DefaultAssetBundle.of(context),
          ),
        );
  late final loadDictionary = local.loadUserWords;
  late final saveUserWords = local.saveUserWords;
  late final preloadWrongWordsDictionary = local.preloadProfanities;
  late final verifyWord = local.verifyNonProfanityWord;
}
