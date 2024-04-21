import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:wbw_dictionaries/wbw_dictionaries.dart';

import '../data_sources/data_sources.dart';
import 'base_repository.dart';

final class WordsRespository
    extends BaseLocalRepository<UserWordsLocalDataSource> {
  WordsRespository(final BuildContext context)
      : wbwDictionary = context.read(),
        serverpodClient = context.read(),
        super(
          local: UserWordsLocalDataSourceImpl(
            localDb: context.read(),
            assetBundle: DefaultAssetBundle.of(context),
          ),
        );
  final WbwDictionary wbwDictionary;
  final ServerpodClient serverpodClient;
  late final loadUserWords = local.loadUserWords;
  late final saveUserWords = local.saveUserWords;
  late final preloadWrongWordsDictionary = local.preloadProfanities;
  late final verifyNonProfanityWord = local.verifyNonProfanityWord;
  late final getWordMeaning = wbwDictionary.getWordMeaning;
}
