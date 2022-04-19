// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of abstract;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookModel {
  String get id => throw _privateConstructorUsedError;
  BookKind get kind => throw _privateConstructorUsedError;
  Map<String, int> get playersInvestments => throw _privateConstructorUsedError;
  ScoreModel get score => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookModelCopyWith<BookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookModelCopyWith<$Res> {
  factory $BookModelCopyWith(BookModel value, $Res Function(BookModel) then) =
      _$BookModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      BookKind kind,
      Map<String, int> playersInvestments,
      ScoreModel score});

  $ScoreModelCopyWith<$Res> get score;
}

/// @nodoc
class _$BookModelCopyWithImpl<$Res> implements $BookModelCopyWith<$Res> {
  _$BookModelCopyWithImpl(this._value, this._then);

  final BookModel _value;
  // ignore: unused_field
  final $Res Function(BookModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? kind = freezed,
    Object? playersInvestments = freezed,
    Object? score = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as BookKind,
      playersInvestments: playersInvestments == freezed
          ? _value.playersInvestments
          : playersInvestments // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as ScoreModel,
    ));
  }

  @override
  $ScoreModelCopyWith<$Res> get score {
    return $ScoreModelCopyWith<$Res>(_value.score, (value) {
      return _then(_value.copyWith(score: value));
    });
  }
}

/// @nodoc
abstract class _$BookModelCopyWith<$Res> implements $BookModelCopyWith<$Res> {
  factory _$BookModelCopyWith(
          _BookModel value, $Res Function(_BookModel) then) =
      __$BookModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      BookKind kind,
      Map<String, int> playersInvestments,
      ScoreModel score});

  @override
  $ScoreModelCopyWith<$Res> get score;
}

/// @nodoc
class __$BookModelCopyWithImpl<$Res> extends _$BookModelCopyWithImpl<$Res>
    implements _$BookModelCopyWith<$Res> {
  __$BookModelCopyWithImpl(_BookModel _value, $Res Function(_BookModel) _then)
      : super(_value, (v) => _then(v as _BookModel));

  @override
  _BookModel get _value => super._value as _BookModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? kind = freezed,
    Object? playersInvestments = freezed,
    Object? score = freezed,
  }) {
    return _then(_BookModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as BookKind,
      playersInvestments: playersInvestments == freezed
          ? _value.playersInvestments
          : playersInvestments // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as ScoreModel,
    ));
  }
}

/// @nodoc

class _$_BookModel extends _BookModel with DiagnosticableTreeMixin {
  const _$_BookModel(
      {required this.id,
      required this.kind,
      required final Map<String, int> playersInvestments,
      required this.score})
      : _playersInvestments = playersInvestments,
        super._();

  @override
  final String id;
  @override
  final BookKind kind;
  final Map<String, int> _playersInvestments;
  @override
  Map<String, int> get playersInvestments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_playersInvestments);
  }

  @override
  final ScoreModel score;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookModel(id: $id, kind: $kind, playersInvestments: $playersInvestments, score: $score)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('kind', kind))
      ..add(DiagnosticsProperty('playersInvestments', playersInvestments))
      ..add(DiagnosticsProperty('score', score));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.kind, kind) &&
            const DeepCollectionEquality()
                .equals(other.playersInvestments, playersInvestments) &&
            const DeepCollectionEquality().equals(other.score, score));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(kind),
      const DeepCollectionEquality().hash(playersInvestments),
      const DeepCollectionEquality().hash(score));

  @JsonKey(ignore: true)
  @override
  _$BookModelCopyWith<_BookModel> get copyWith =>
      __$BookModelCopyWithImpl<_BookModel>(this, _$identity);
}

abstract class _BookModel extends BookModel {
  const factory _BookModel(
      {required final String id,
      required final BookKind kind,
      required final Map<String, int> playersInvestments,
      required final ScoreModel score}) = _$_BookModel;
  const _BookModel._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  BookKind get kind => throw _privateConstructorUsedError;
  @override
  Map<String, int> get playersInvestments => throw _privateConstructorUsedError;
  @override
  ScoreModel get score => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookModelCopyWith<_BookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameLevelModel {
  String get id => throw _privateConstructorUsedError;

  /// All untaken books should be kept in the list
  ///
  /// In case if [GamePlayerModel] took new book, the book
  /// should be transfered to his list of books
  List<BookModel> get unselectedBooks => throw _privateConstructorUsedError;
  Map<String, GamePlayerModel> get players =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameLevelModelCopyWith<GameLevelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameLevelModelCopyWith<$Res> {
  factory $GameLevelModelCopyWith(
          GameLevelModel value, $Res Function(GameLevelModel) then) =
      _$GameLevelModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      List<BookModel> unselectedBooks,
      Map<String, GamePlayerModel> players});
}

/// @nodoc
class _$GameLevelModelCopyWithImpl<$Res>
    implements $GameLevelModelCopyWith<$Res> {
  _$GameLevelModelCopyWithImpl(this._value, this._then);

  final GameLevelModel _value;
  // ignore: unused_field
  final $Res Function(GameLevelModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? unselectedBooks = freezed,
    Object? players = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      unselectedBooks: unselectedBooks == freezed
          ? _value.unselectedBooks
          : unselectedBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as Map<String, GamePlayerModel>,
    ));
  }
}

/// @nodoc
abstract class _$GameLevelModelCopyWith<$Res>
    implements $GameLevelModelCopyWith<$Res> {
  factory _$GameLevelModelCopyWith(
          _GameLevelModel value, $Res Function(_GameLevelModel) then) =
      __$GameLevelModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      List<BookModel> unselectedBooks,
      Map<String, GamePlayerModel> players});
}

/// @nodoc
class __$GameLevelModelCopyWithImpl<$Res>
    extends _$GameLevelModelCopyWithImpl<$Res>
    implements _$GameLevelModelCopyWith<$Res> {
  __$GameLevelModelCopyWithImpl(
      _GameLevelModel _value, $Res Function(_GameLevelModel) _then)
      : super(_value, (v) => _then(v as _GameLevelModel));

  @override
  _GameLevelModel get _value => super._value as _GameLevelModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? unselectedBooks = freezed,
    Object? players = freezed,
  }) {
    return _then(_GameLevelModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      unselectedBooks: unselectedBooks == freezed
          ? _value.unselectedBooks
          : unselectedBooks // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as Map<String, GamePlayerModel>,
    ));
  }
}

/// @nodoc

class _$_GameLevelModel extends _GameLevelModel with DiagnosticableTreeMixin {
  const _$_GameLevelModel(
      {required this.id,
      required final List<BookModel> unselectedBooks,
      required final Map<String, GamePlayerModel> players})
      : _unselectedBooks = unselectedBooks,
        _players = players,
        super._();

  @override
  final String id;

  /// All untaken books should be kept in the list
  ///
  /// In case if [GamePlayerModel] took new book, the book
  /// should be transfered to his list of books
  final List<BookModel> _unselectedBooks;

  /// All untaken books should be kept in the list
  ///
  /// In case if [GamePlayerModel] took new book, the book
  /// should be transfered to his list of books
  @override
  List<BookModel> get unselectedBooks {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unselectedBooks);
  }

  final Map<String, GamePlayerModel> _players;
  @override
  Map<String, GamePlayerModel> get players {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_players);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameLevelModel(id: $id, unselectedBooks: $unselectedBooks, players: $players)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameLevelModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('unselectedBooks', unselectedBooks))
      ..add(DiagnosticsProperty('players', players));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameLevelModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.unselectedBooks, unselectedBooks) &&
            const DeepCollectionEquality().equals(other.players, players));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(unselectedBooks),
      const DeepCollectionEquality().hash(players));

  @JsonKey(ignore: true)
  @override
  _$GameLevelModelCopyWith<_GameLevelModel> get copyWith =>
      __$GameLevelModelCopyWithImpl<_GameLevelModel>(this, _$identity);
}

abstract class _GameLevelModel extends GameLevelModel {
  const factory _GameLevelModel(
      {required final String id,
      required final List<BookModel> unselectedBooks,
      required final Map<String, GamePlayerModel> players}) = _$_GameLevelModel;
  const _GameLevelModel._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override

  /// All untaken books should be kept in the list
  ///
  /// In case if [GamePlayerModel] took new book, the book
  /// should be transfered to his list of books
  List<BookModel> get unselectedBooks => throw _privateConstructorUsedError;
  @override
  Map<String, GamePlayerModel> get players =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GameLevelModelCopyWith<_GameLevelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GameModel {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  List<GameLevelModel> get levels => throw _privateConstructorUsedError;
  int get currentLevelIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameModelCopyWith<GameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameModelCopyWith<$Res> {
  factory $GameModelCopyWith(GameModel value, $Res Function(GameModel) then) =
      _$GameModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      DateTime createdAt,
      List<GameLevelModel> levels,
      int currentLevelIndex});
}

/// @nodoc
class _$GameModelCopyWithImpl<$Res> implements $GameModelCopyWith<$Res> {
  _$GameModelCopyWithImpl(this._value, this._then);

  final GameModel _value;
  // ignore: unused_field
  final $Res Function(GameModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? levels = freezed,
    Object? currentLevelIndex = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      levels: levels == freezed
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as List<GameLevelModel>,
      currentLevelIndex: currentLevelIndex == freezed
          ? _value.currentLevelIndex
          : currentLevelIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$GameModelCopyWith<$Res> implements $GameModelCopyWith<$Res> {
  factory _$GameModelCopyWith(
          _GameModel value, $Res Function(_GameModel) then) =
      __$GameModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      DateTime createdAt,
      List<GameLevelModel> levels,
      int currentLevelIndex});
}

/// @nodoc
class __$GameModelCopyWithImpl<$Res> extends _$GameModelCopyWithImpl<$Res>
    implements _$GameModelCopyWith<$Res> {
  __$GameModelCopyWithImpl(_GameModel _value, $Res Function(_GameModel) _then)
      : super(_value, (v) => _then(v as _GameModel));

  @override
  _GameModel get _value => super._value as _GameModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? levels = freezed,
    Object? currentLevelIndex = freezed,
  }) {
    return _then(_GameModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      levels: levels == freezed
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as List<GameLevelModel>,
      currentLevelIndex: currentLevelIndex == freezed
          ? _value.currentLevelIndex
          : currentLevelIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GameModel with DiagnosticableTreeMixin implements _GameModel {
  const _$_GameModel(
      {required this.id,
      required this.createdAt,
      required final List<GameLevelModel> levels,
      this.currentLevelIndex = 0})
      : _levels = levels;

  @override
  final String id;
  @override
  final DateTime createdAt;
  final List<GameLevelModel> _levels;
  @override
  List<GameLevelModel> get levels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_levels);
  }

  @override
  @JsonKey()
  final int currentLevelIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameModel(id: $id, createdAt: $createdAt, levels: $levels, currentLevelIndex: $currentLevelIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('levels', levels))
      ..add(DiagnosticsProperty('currentLevelIndex', currentLevelIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.levels, levels) &&
            const DeepCollectionEquality()
                .equals(other.currentLevelIndex, currentLevelIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(levels),
      const DeepCollectionEquality().hash(currentLevelIndex));

  @JsonKey(ignore: true)
  @override
  _$GameModelCopyWith<_GameModel> get copyWith =>
      __$GameModelCopyWithImpl<_GameModel>(this, _$identity);
}

abstract class _GameModel implements GameModel {
  const factory _GameModel(
      {required final String id,
      required final DateTime createdAt,
      required final List<GameLevelModel> levels,
      final int currentLevelIndex}) = _$_GameModel;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  List<GameLevelModel> get levels => throw _privateConstructorUsedError;
  @override
  int get currentLevelIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GameModelCopyWith<_GameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GamePlayerModel {
  String get id => throw _privateConstructorUsedError;
  List<BookModel> get books => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GamePlayerModelCopyWith<GamePlayerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamePlayerModelCopyWith<$Res> {
  factory $GamePlayerModelCopyWith(
          GamePlayerModel value, $Res Function(GamePlayerModel) then) =
      _$GamePlayerModelCopyWithImpl<$Res>;
  $Res call({String id, List<BookModel> books});
}

/// @nodoc
class _$GamePlayerModelCopyWithImpl<$Res>
    implements $GamePlayerModelCopyWith<$Res> {
  _$GamePlayerModelCopyWithImpl(this._value, this._then);

  final GamePlayerModel _value;
  // ignore: unused_field
  final $Res Function(GamePlayerModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? books = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
    ));
  }
}

/// @nodoc
abstract class _$GamePlayerModelCopyWith<$Res>
    implements $GamePlayerModelCopyWith<$Res> {
  factory _$GamePlayerModelCopyWith(
          _GamePlayerModel value, $Res Function(_GamePlayerModel) then) =
      __$GamePlayerModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, List<BookModel> books});
}

/// @nodoc
class __$GamePlayerModelCopyWithImpl<$Res>
    extends _$GamePlayerModelCopyWithImpl<$Res>
    implements _$GamePlayerModelCopyWith<$Res> {
  __$GamePlayerModelCopyWithImpl(
      _GamePlayerModel _value, $Res Function(_GamePlayerModel) _then)
      : super(_value, (v) => _then(v as _GamePlayerModel));

  @override
  _GamePlayerModel get _value => super._value as _GamePlayerModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? books = freezed,
  }) {
    return _then(_GamePlayerModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookModel>,
    ));
  }
}

/// @nodoc

class _$_GamePlayerModel
    with DiagnosticableTreeMixin
    implements _GamePlayerModel {
  const _$_GamePlayerModel(
      {required this.id, required final List<BookModel> books})
      : _books = books;

  @override
  final String id;
  final List<BookModel> _books;
  @override
  List<BookModel> get books {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GamePlayerModel(id: $id, books: $books)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GamePlayerModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('books', books));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GamePlayerModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.books, books));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(books));

  @JsonKey(ignore: true)
  @override
  _$GamePlayerModelCopyWith<_GamePlayerModel> get copyWith =>
      __$GamePlayerModelCopyWithImpl<_GamePlayerModel>(this, _$identity);
}

abstract class _GamePlayerModel implements GamePlayerModel {
  const factory _GamePlayerModel(
      {required final String id,
      required final List<BookModel> books}) = _$_GamePlayerModel;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  List<BookModel> get books => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GamePlayerModelCopyWith<_GamePlayerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlayerProfileModel {
  String get id => throw _privateConstructorUsedError;
  int get colorValue => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// The [GameKnowledge] and [GameLetter] will be counted
  /// as highscore based on this [BookModel] list in [GameLevelModel]
  GameLevelModel get levelsHighscore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerProfileModelCopyWith<PlayerProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerProfileModelCopyWith<$Res> {
  factory $PlayerProfileModelCopyWith(
          PlayerProfileModel value, $Res Function(PlayerProfileModel) then) =
      _$PlayerProfileModelCopyWithImpl<$Res>;
  $Res call(
      {String id, int colorValue, String name, GameLevelModel levelsHighscore});

  $GameLevelModelCopyWith<$Res> get levelsHighscore;
}

/// @nodoc
class _$PlayerProfileModelCopyWithImpl<$Res>
    implements $PlayerProfileModelCopyWith<$Res> {
  _$PlayerProfileModelCopyWithImpl(this._value, this._then);

  final PlayerProfileModel _value;
  // ignore: unused_field
  final $Res Function(PlayerProfileModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? colorValue = freezed,
    Object? name = freezed,
    Object? levelsHighscore = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      colorValue: colorValue == freezed
          ? _value.colorValue
          : colorValue // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      levelsHighscore: levelsHighscore == freezed
          ? _value.levelsHighscore
          : levelsHighscore // ignore: cast_nullable_to_non_nullable
              as GameLevelModel,
    ));
  }

  @override
  $GameLevelModelCopyWith<$Res> get levelsHighscore {
    return $GameLevelModelCopyWith<$Res>(_value.levelsHighscore, (value) {
      return _then(_value.copyWith(levelsHighscore: value));
    });
  }
}

/// @nodoc
abstract class _$PlayerProfileModelCopyWith<$Res>
    implements $PlayerProfileModelCopyWith<$Res> {
  factory _$PlayerProfileModelCopyWith(
          _PlayerProfileModel value, $Res Function(_PlayerProfileModel) then) =
      __$PlayerProfileModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, int colorValue, String name, GameLevelModel levelsHighscore});

  @override
  $GameLevelModelCopyWith<$Res> get levelsHighscore;
}

/// @nodoc
class __$PlayerProfileModelCopyWithImpl<$Res>
    extends _$PlayerProfileModelCopyWithImpl<$Res>
    implements _$PlayerProfileModelCopyWith<$Res> {
  __$PlayerProfileModelCopyWithImpl(
      _PlayerProfileModel _value, $Res Function(_PlayerProfileModel) _then)
      : super(_value, (v) => _then(v as _PlayerProfileModel));

  @override
  _PlayerProfileModel get _value => super._value as _PlayerProfileModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? colorValue = freezed,
    Object? name = freezed,
    Object? levelsHighscore = freezed,
  }) {
    return _then(_PlayerProfileModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      colorValue: colorValue == freezed
          ? _value.colorValue
          : colorValue // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      levelsHighscore: levelsHighscore == freezed
          ? _value.levelsHighscore
          : levelsHighscore // ignore: cast_nullable_to_non_nullable
              as GameLevelModel,
    ));
  }
}

/// @nodoc

class _$_PlayerProfileModel extends _PlayerProfileModel
    with DiagnosticableTreeMixin {
  const _$_PlayerProfileModel(
      {required this.id,
      required this.colorValue,
      required this.name,
      required this.levelsHighscore})
      : super._();

  @override
  final String id;
  @override
  final int colorValue;
  @override
  final String name;

  /// The [GameKnowledge] and [GameLetter] will be counted
  /// as highscore based on this [BookModel] list in [GameLevelModel]
  @override
  final GameLevelModel levelsHighscore;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerProfileModel(id: $id, colorValue: $colorValue, name: $name, levelsHighscore: $levelsHighscore)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayerProfileModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('colorValue', colorValue))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('levelsHighscore', levelsHighscore));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlayerProfileModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.colorValue, colorValue) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.levelsHighscore, levelsHighscore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(colorValue),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(levelsHighscore));

  @JsonKey(ignore: true)
  @override
  _$PlayerProfileModelCopyWith<_PlayerProfileModel> get copyWith =>
      __$PlayerProfileModelCopyWithImpl<_PlayerProfileModel>(this, _$identity);
}

abstract class _PlayerProfileModel extends PlayerProfileModel {
  const factory _PlayerProfileModel(
      {required final String id,
      required final int colorValue,
      required final String name,
      required final GameLevelModel levelsHighscore}) = _$_PlayerProfileModel;
  const _PlayerProfileModel._() : super._();

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  int get colorValue => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override

  /// The [GameKnowledge] and [GameLetter] will be counted
  /// as highscore based on this [BookModel] list in [GameLevelModel]
  GameLevelModel get levelsHighscore => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlayerProfileModelCopyWith<_PlayerProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScoreModel {
  int get knowledgeCount => throw _privateConstructorUsedError;
  int get lettersCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScoreModelCopyWith<ScoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreModelCopyWith<$Res> {
  factory $ScoreModelCopyWith(
          ScoreModel value, $Res Function(ScoreModel) then) =
      _$ScoreModelCopyWithImpl<$Res>;
  $Res call({int knowledgeCount, int lettersCount});
}

/// @nodoc
class _$ScoreModelCopyWithImpl<$Res> implements $ScoreModelCopyWith<$Res> {
  _$ScoreModelCopyWithImpl(this._value, this._then);

  final ScoreModel _value;
  // ignore: unused_field
  final $Res Function(ScoreModel) _then;

  @override
  $Res call({
    Object? knowledgeCount = freezed,
    Object? lettersCount = freezed,
  }) {
    return _then(_value.copyWith(
      knowledgeCount: knowledgeCount == freezed
          ? _value.knowledgeCount
          : knowledgeCount // ignore: cast_nullable_to_non_nullable
              as int,
      lettersCount: lettersCount == freezed
          ? _value.lettersCount
          : lettersCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ScoreModelCopyWith<$Res> implements $ScoreModelCopyWith<$Res> {
  factory _$ScoreModelCopyWith(
          _ScoreModel value, $Res Function(_ScoreModel) then) =
      __$ScoreModelCopyWithImpl<$Res>;
  @override
  $Res call({int knowledgeCount, int lettersCount});
}

/// @nodoc
class __$ScoreModelCopyWithImpl<$Res> extends _$ScoreModelCopyWithImpl<$Res>
    implements _$ScoreModelCopyWith<$Res> {
  __$ScoreModelCopyWithImpl(
      _ScoreModel _value, $Res Function(_ScoreModel) _then)
      : super(_value, (v) => _then(v as _ScoreModel));

  @override
  _ScoreModel get _value => super._value as _ScoreModel;

  @override
  $Res call({
    Object? knowledgeCount = freezed,
    Object? lettersCount = freezed,
  }) {
    return _then(_ScoreModel(
      knowledgeCount: knowledgeCount == freezed
          ? _value.knowledgeCount
          : knowledgeCount // ignore: cast_nullable_to_non_nullable
              as int,
      lettersCount: lettersCount == freezed
          ? _value.lettersCount
          : lettersCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ScoreModel with DiagnosticableTreeMixin implements _ScoreModel {
  const _$_ScoreModel({this.knowledgeCount = 0, this.lettersCount = 0});

  @override
  @JsonKey()
  final int knowledgeCount;
  @override
  @JsonKey()
  final int lettersCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScoreModel(knowledgeCount: $knowledgeCount, lettersCount: $lettersCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScoreModel'))
      ..add(DiagnosticsProperty('knowledgeCount', knowledgeCount))
      ..add(DiagnosticsProperty('lettersCount', lettersCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ScoreModel &&
            const DeepCollectionEquality()
                .equals(other.knowledgeCount, knowledgeCount) &&
            const DeepCollectionEquality()
                .equals(other.lettersCount, lettersCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(knowledgeCount),
      const DeepCollectionEquality().hash(lettersCount));

  @JsonKey(ignore: true)
  @override
  _$ScoreModelCopyWith<_ScoreModel> get copyWith =>
      __$ScoreModelCopyWithImpl<_ScoreModel>(this, _$identity);
}

abstract class _ScoreModel implements ScoreModel {
  const factory _ScoreModel(
      {final int knowledgeCount, final int lettersCount}) = _$_ScoreModel;

  @override
  int get knowledgeCount => throw _privateConstructorUsedError;
  @override
  int get lettersCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScoreModelCopyWith<_ScoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}
