import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'LocalDictionaryModel.g.dart';

class LocalDictionaryModelConsts {
  static String storagename = 'localdictionary';
}

@JsonSerializable(nullable: true)
class LocalDictionaryModel extends ChangeNotifier {
  final Set<String> words;
  LocalDictionaryModel({this.words = const {}});
  void addWord(String value) {
    words.add(value);
    notifyListeners();
  }

  void reloadState({@required Set<String> words}) {
    words.clear();
    words.addAll(words);
  }

  factory LocalDictionaryModel.fromJson(Map<String, dynamic> json) =>
      _$LocalDictionaryModelFromJson(json);
  Map<String, dynamic> toJson() => _$LocalDictionaryModelToJson(this);
}
