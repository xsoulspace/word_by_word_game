// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'WordsModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WordsModel _$WordsModelFromJson(Map<String, dynamic> json) {
  return WordsModel(
    (json['allWordsByWordIdMap'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(int.parse(k),
          e == null ? null : Word.fromJson(e as Map<String, dynamic>)),
    ),
    (json['wordsIdsByPlayerIdMap'] as Map<String, dynamic>)?.map(
      (k, e) =>
          MapEntry(int.parse(k), (e as List)?.map((e) => e as int)?.toList()),
    ),
    newWordBeginning: json['newWordBeginning'] as String,
    newWordEnding: json['newWordEnding'] as String,
    phraseLimit: json['phraseLimit'] as int,
    phraseLimitMax: json['phraseLimitMax'] as int,
    phraseLimitLettersLeft: json['phraseLimitLettersLeft'] as int,
    wordsIdMax: json['wordsIdMax'] as int,
  )
    ..phraseFromLastword = json['phraseFromLastword'] as String
    ..privateLastword = json['privateLastword'] as String
    ..lastword = json['lastword'] as String;
}

Map<String, dynamic> _$WordsModelToJson(WordsModel instance) =>
    <String, dynamic>{
      'wordsIdsByPlayerIdMap': instance.wordsIdsByPlayerIdMap
          ?.map((k, e) => MapEntry(k.toString(), e)),
      'allWordsByWordIdMap': instance.allWordsByWordIdMap
          ?.map((k, e) => MapEntry(k.toString(), e)),
      'wordsIdMax': instance.wordsIdMax,
      'phraseLimitMax': instance.phraseLimitMax,
      'phraseLimit': instance.phraseLimit,
      'phraseLimitLettersLeft': instance.phraseLimitLettersLeft,
      'phraseFromLastword': instance.phraseFromLastword,
      'privateLastword': instance.privateLastword,
      'lastword': instance.lastword,
      'newWordBeginning': instance.newWordBeginning,
      'newWordEnding': instance.newWordEnding,
    };
