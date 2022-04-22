// GENERATED CODE - DO NOT MODIFY BY HAND

part of abstract;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookModel _$$_BookModelFromJson(Map<String, dynamic> json) => _$_BookModel(
      id: json['id'] as String,
      kind: $enumDecode(_$BookKindEnumMap, json['kind']),
      playersInvestments:
          Map<String, int>.from(json['playersInvestments'] as Map),
      height: (json['height'] as num).toDouble(),
      axis: $enumDecode(_$BookAxisEnumMap, json['axis']),
      lettersCount: json['lettersCount'] as int,
      width: (json['width'] as num).toDouble(),
    );

Map<String, dynamic> _$$_BookModelToJson(_$_BookModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kind': _$BookKindEnumMap[instance.kind],
      'playersInvestments': instance.playersInvestments,
      'height': instance.height,
      'axis': _$BookAxisEnumMap[instance.axis],
      'lettersCount': instance.lettersCount,
      'width': instance.width,
    };

const _$BookKindEnumMap = {
  BookKind.science: 'science',
  BookKind.prose: 'prose',
  BookKind.poem: 'poem',
};

const _$BookAxisEnumMap = {
  BookAxis.horizontal: 'horizontal',
  BookAxis.vertical: 'vertical',
  BookAxis.frontal: 'frontal',
};

_$_BookShelfLevelModel _$$_BookShelfLevelModelFromJson(
        Map<String, dynamic> json) =>
    _$_BookShelfLevelModel(
      id: json['id'] as String,
      slots: (json['slots'] as List<dynamic>)
          .map((e) => BookShelfSlotModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      players: (json['players'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, GamePlayerModel.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$_BookShelfLevelModelToJson(
        _$_BookShelfLevelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slots': instance.slots,
      'players': instance.players,
    };

_$_BookShelfModel _$$_BookShelfModelFromJson(Map<String, dynamic> json) =>
    _$_BookShelfModel(
      width: (json['width'] as num).toDouble(),
      height: (json['height'] as num).toDouble(),
      slots: (json['slots'] as List<dynamic>)
          .map((e) => BookShelfSlotModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BookShelfModelToJson(_$_BookShelfModel instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'slots': instance.slots,
    };

_$_BookShelfSlotModel _$$_BookShelfSlotModelFromJson(
        Map<String, dynamic> json) =>
    _$_BookShelfSlotModel(
      books: (json['books'] as List<dynamic>)
          .map((e) => BookModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BookShelfSlotModelToJson(
        _$_BookShelfSlotModel instance) =>
    <String, dynamic>{
      'books': instance.books,
    };

_$_GameModel _$$_GameModelFromJson(Map<String, dynamic> json) => _$_GameModel(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      bookShelfLevels: (json['bookShelfLevels'] as List<dynamic>)
          .map((e) => BookShelfLevelModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      hostPlayerId: json['hostPlayerId'] as String,
      currentBookShelfLevelIndex:
          json['currentBookShelfLevelIndex'] as int? ?? 0,
    );

Map<String, dynamic> _$$_GameModelToJson(_$_GameModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'bookShelfLevels': instance.bookShelfLevels,
      'hostPlayerId': instance.hostPlayerId,
      'currentBookShelfLevelIndex': instance.currentBookShelfLevelIndex,
    };

_$_GamePlayerModel _$$_GamePlayerModelFromJson(Map<String, dynamic> json) =>
    _$_GamePlayerModel(
      id: json['id'] as String,
      books: (json['books'] as List<dynamic>)
          .map((e) => BookModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GamePlayerModelToJson(_$_GamePlayerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'books': instance.books,
    };

_$_PlayerProfileModel _$$_PlayerProfileModelFromJson(
        Map<String, dynamic> json) =>
    _$_PlayerProfileModel(
      id: json['id'] as String,
      colorValue: json['colorValue'] as int,
      name: json['name'] as String,
      playedGames: (json['playedGames'] as List<dynamic>)
          .map((e) => e as String)
          .toSet(),
    );

Map<String, dynamic> _$$_PlayerProfileModelToJson(
        _$_PlayerProfileModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'colorValue': instance.colorValue,
      'name': instance.name,
      'playedGames': instance.playedGames.toList(),
    };

_$_ScoreModel _$$_ScoreModelFromJson(Map<String, dynamic> json) =>
    _$_ScoreModel(
      knowledgeCount: json['knowledgeCount'] as int? ?? 0,
      lettersCount: json['lettersCount'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ScoreModelToJson(_$_ScoreModel instance) =>
    <String, dynamic>{
      'knowledgeCount': instance.knowledgeCount,
      'lettersCount': instance.lettersCount,
    };

LocalizedText _$LocalizedTextFromJson(Map<String, dynamic> json) =>
    LocalizedText(
      en: json['en'] as String,
      ru: json['ru'] as String,
      it: json['it'] as String?,
      ga: json['ga'] as String?,
    );

Map<String, dynamic> _$LocalizedTextToJson(LocalizedText instance) =>
    <String, dynamic>{
      'ru': instance.ru,
      'en': instance.en,
      'it': instance.it,
      'ga': instance.ga,
    };
