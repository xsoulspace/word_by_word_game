import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/StorageMixin.dart';
import 'package:word_by_word_game/models/WordsModel.dart';

class StorageModel extends ChangeNotifier with StorageMixin {
  final BuildContext context;
  StorageModel({@required this.context});
  Future<void> save<T>({String key, Object value}) async {
    await checkAndLoadStorageInstance();
    await storage.putString(key, jsonEncode(value));
  }

  Future<T> load<T>(String key) async {
    await checkAndLoadStorageInstance();
    var value = storage.getString(key);
    return jsonDecode(value);
  }

  Future<void> savePlayersModel() async {
    var playersModel = Provider.of<PlayersModel>(context);
    await save(
        key: PlayersModelConsts.storagename, value: playersModel.toJson());
  }

  Future<void> loadPlayersModel() async {
    var playersModel = Provider.of<PlayersModel>(context);
    var modelStr = await load(PlayersModelConsts.storagename);
    if (modelStr == null) return;
    var model = PlayersModel.fromJson(modelStr);
    playersModel
      ..playerIdMax = model.playerIdMax
      ..playersByPlayerIdMap = model.playersByPlayerIdMap;
    notifyListeners();
  }

  Future<void> saveWordsModel() async {
    var wordsModel = Provider.of<WordsModel>(context);
    await save(key: WordsModelConsts.storagename, value: wordsModel.toJson());
  }

  Future<void> loadWordsModel() async {
    var wordsModel = Provider.of<WordsModel>(context);
    var modelStr = await load(WordsModelConsts.storagename);
    if (modelStr == null) return;
    var model = WordsModel.fromJson(modelStr);
    wordsModel
      ..newWordBeginning = model.newWordBeginning
      ..newWordEnding = model.newWordEnding
      ..phraseLimit = model.phraseLimit
      ..phraseLimitMax = model.phraseLimitMax
      ..wordsIdMax = model.wordsIdMax
      ..wordsIdsByPlayerIdMap = model.wordsIdsByPlayerIdMap
      ..allWordsByWordIdMap = model.allWordsByWordIdMap;
    notifyListeners();
  }
}
