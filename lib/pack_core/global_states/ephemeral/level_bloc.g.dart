// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LiveLevelBlocState _$$_LiveLevelBlocStateFromJson(
        Map<String, dynamic> json) =>
    _$_LiveLevelBlocState(
      id: json['id'] as String,
      name: json['name'] == null
          ? LocalizedMap.empty
          : LocalizedMap.fromJson(json['name'] as Map<String, dynamic>),
      currentWord: json['currentWord'] == null
          ? const CurrentWordModel()
          : CurrentWordModel.fromJson(
              json['currentWord'] as Map<String, dynamic>),
      words: (json['words'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      latestWord: json['latestWord'] as String? ?? '',
      phaseType: $enumDecodeNullable(
              _$LevelPlayerPhaseTypeEnumMap, json['phaseType']) ??
          LevelPlayerPhaseType.entryWord,
      wordWarning:
          $enumDecodeNullable(_$WordWarningEnumMap, json['wordWarning']) ??
              WordWarning.none,
    );

Map<String, dynamic> _$$_LiveLevelBlocStateToJson(
        _$_LiveLevelBlocState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name.toJson(),
      'currentWord': instance.currentWord.toJson(),
      'words': instance.words,
      'latestWord': instance.latestWord,
      'phaseType': _$LevelPlayerPhaseTypeEnumMap[instance.phaseType]!,
      'wordWarning': _$WordWarningEnumMap[instance.wordWarning]!,
    };

const _$LevelPlayerPhaseTypeEnumMap = {
  LevelPlayerPhaseType.entryWord: 'entryWord',
  LevelPlayerPhaseType.selectAction: 'selectAction',
};

const _$WordWarningEnumMap = {
  WordWarning.none: 'none',
  WordWarning.isWritten: 'isWritten',
  WordWarning.isNotCorrect: 'isNotCorrect',
};
