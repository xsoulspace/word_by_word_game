// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'level_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LiveLevelBlocState _$$_LiveLevelBlocStateFromJson(
        Map<String, dynamic> json) =>
    _$_LiveLevelBlocState(
      id: json['id'] as String,
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

Map<String, dynamic> _$$_LiveLevelBlocStateToJson(
        _$_LiveLevelBlocState instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currentWord': instance.currentWord.toJson(),
      'words': instance.words,
      'latestWord': instance.latestWord,
    };
