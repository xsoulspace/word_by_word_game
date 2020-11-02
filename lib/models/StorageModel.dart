import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:word_by_word_game/models/PlayersModel.dart';
import 'package:word_by_word_game/models/StorageMixin.dart';
import 'package:word_by_word_game/models/WordsModel.dart';

class StorageModel extends ChangeNotifier with StorageMixin {
  WordsModel _wordsModel;
  set wordsModel(WordsModel wordsModel) {
    if (wordsModel != null) _wordsModel = wordsModel;
  }

  PlayersModel _playersModel;
  set playersModel(PlayersModel playersModel) {
    if (playersModel != null) _playersModel = playersModel;
  }

  // Private constructor
  StorageModel._create(this._wordsModel, this._playersModel);

  /// Public factory
  static Future<StorageModel> create(
      {@required WordsModel wordsModel,
      @required PlayersModel playersModel}) async {
    // Call the private constructor
    var storageModel = StorageModel._create(wordsModel, playersModel);

    await storageModel.checkAndLoadStorageInstance();
    await storageModel.loadPlayersModel();
    await storageModel.loadWordsModel();
    // Return the fully initialized object
    return storageModel;
  }

  Future<void> save<T>({@required String key, @required Object value}) async {
    await checkAndLoadStorageInstance();
    await storage.putString(key, jsonEncode(value));
  }

  Future<T> load<T>(String key) async {
    await checkAndLoadStorageInstance();
    var value = storage.getString(key);
    if (value == '') return null;
    return jsonDecode(value);
  }

  Future<void> savePlayersModel() async {
    await save(
        key: PlayersModelConsts.storagename, value: _playersModel.toJson());
  }

  Future<void> loadPlayersModel() async {
    var modelStr = await load(PlayersModelConsts.storagename);
    if (modelStr == null) return;
    var model = PlayersModel.fromJson(modelStr);
    _playersModel
      ..reloadPlayers(playersByPlayerIdMap: model.playersByPlayerIdMap)
      ..currentPlayer = model.currentPlayer
      ..notifyListeners();
    notifyListeners();
  }

  Future<void> saveWordsModel() async {
    await save(key: WordsModelConsts.storagename, value: _wordsModel.toJson());
  }

  Future<void> loadWordsModel() async {
    var modelStr = await load(WordsModelConsts.storagename);
    if (modelStr == null) return;
    var model = WordsModel.fromJson(modelStr);
    _wordsModel
      ..newWordBeginning = model.newWordBeginning
      ..newWordEnding = model.newWordEnding
      ..phraseFromLastword = model.phraseFromLastword
      ..phraseLimit = model.phraseLimit
      ..phraseLimitMax = model.phraseLimitMax
      ..phraseLimitLettersLeft = model.phraseLimitLettersLeft
      ..wordsIdMax = model.wordsIdMax
      ..lastword = model.lastword
      ..reloadState(
          allWordsByWordIdMap: model.allWordsByWordIdMap,
          wordsIdsPlayerIdMap: model.wordsIdsByPlayerIdMap)
      ..notifyListeners();
    notifyListeners();
  }
}
