import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'LocalDictionaryModel.g.dart';

class LocalDictionaryModelConsts {
  static String storagename = 'localdictionary';
}

@JsonSerializable()
class LocalDictionaryModel extends ChangeNotifier {
  Set<String> _words;
  LocalDictionaryModel({Set<String> words}) {
    this._words = words ?? {};
  }
  Set<String> get words => _words;
  void addWord(String value) {
    _words.add(value);
    notifyListeners();
  }

  void reloadState({required Set<String> words}) {
    _words.clear();
    _words.addAll(words);
  }

  factory LocalDictionaryModel.fromJson(Map<String, dynamic> json) =>
      _$LocalDictionaryModelFromJson(json);
  Map<String, dynamic> toJson() => _$LocalDictionaryModelToJson(this);
}
