// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LevelBlocState _$$_LevelBlocStateFromJson(Map<String, dynamic> json) =>
    _$_LevelBlocState(
      currentWord: json['currentWord'] == null
          ? const CurrentWordModel()
          : CurrentWordModel.fromJson(
              json['currentWord'] as Map<String, dynamic>),
      words: (json['words'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      latestWord: json['latestWord'] as String? ?? '',
    );

Map<String, dynamic> _$$_LevelBlocStateToJson(_$_LevelBlocState instance) =>
    <String, dynamic>{
      'currentWord': instance.currentWord.toJson(),
      'words': instance.words,
      'latestWord': instance.latestWord,
    };
