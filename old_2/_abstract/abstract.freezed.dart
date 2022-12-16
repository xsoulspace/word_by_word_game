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

BookModel _$BookModelFromJson(Map<String, dynamic> json) {
  return _BookModel.fromJson(json);
}

/// @nodoc
mixin _$BookModel {
  String get id => throw _privateConstructorUsedError;
  String get slotId => throw _privateConstructorUsedError;
  BookKind get kind => throw _privateConstructorUsedError;
  Map<String, int> get playersInvestments => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  BookAxis get axis => throw _privateConstructorUsedError;
  int get lettersCount => throw _privateConstructorUsedError;

  /// The width should be in the range between
  /// [BookGenerator.minBookWidth, BookGenerator.maxBookWidth]
  double get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
      String slotId,
      BookKind kind,
      Map<String, int> playersInvestments,
      double height,
      BookAxis axis,
      int lettersCount,
      double width});
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
    Object? slotId = freezed,
    Object? kind = freezed,
    Object? playersInvestments = freezed,
    Object? height = freezed,
    Object? axis = freezed,
    Object? lettersCount = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      slotId: slotId == freezed
          ? _value.slotId
          : slotId // ignore: cast_nullable_to_non_nullable
              as String,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as BookKind,
      playersInvestments: playersInvestments == freezed
          ? _value.playersInvestments
          : playersInvestments // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      axis: axis == freezed
          ? _value.axis
          : axis // ignore: cast_nullable_to_non_nullable
              as BookAxis,
      lettersCount: lettersCount == freezed
          ? _value.lettersCount
          : lettersCount // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
    ));
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
      String slotId,
      BookKind kind,
      Map<String, int> playersInvestments,
      double height,
      BookAxis axis,
      int lettersCount,
      double width});
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
    Object? slotId = freezed,
    Object? kind = freezed,
    Object? playersInvestments = freezed,
    Object? height = freezed,
    Object? axis = freezed,
    Object? lettersCount = freezed,
    Object? width = freezed,
  }) {
    return _then(_BookModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      slotId: slotId == freezed
          ? _value.slotId
          : slotId // ignore: cast_nullable_to_non_nullable
              as String,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as BookKind,
      playersInvestments: playersInvestments == freezed
          ? _value.playersInvestments
          : playersInvestments // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      axis: axis == freezed
          ? _value.axis
          : axis // ignore: cast_nullable_to_non_nullable
              as BookAxis,
      lettersCount: lettersCount == freezed
          ? _value.lettersCount
          : lettersCount // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BookModel extends _BookModel with DiagnosticableTreeMixin {
  const _$_BookModel(
      {required this.id,
      required this.slotId,
      required this.kind,
      required final Map<String, int> playersInvestments,
      required this.height,
      required this.axis,
      required this.lettersCount,
      required this.width})
      : _playersInvestments = playersInvestments,
        super._();

  factory _$_BookModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookModelFromJson(json);

  @override
  final String id;
  @override
  final String slotId;
  @override
  final BookKind kind;
  final Map<String, int> _playersInvestments;
  @override
  Map<String, int> get playersInvestments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_playersInvestments);
  }

  @override
  final double height;
  @override
  final BookAxis axis;
  @override
  final int lettersCount;

  /// The width should be in the range between
  /// [BookGenerator.minBookWidth, BookGenerator.maxBookWidth]
  @override
  final double width;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookModel(id: $id, slotId: $slotId, kind: $kind, playersInvestments: $playersInvestments, height: $height, axis: $axis, lettersCount: $lettersCount, width: $width)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('slotId', slotId))
      ..add(DiagnosticsProperty('kind', kind))
      ..add(DiagnosticsProperty('playersInvestments', playersInvestments))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('axis', axis))
      ..add(DiagnosticsProperty('lettersCount', lettersCount))
      ..add(DiagnosticsProperty('width', width));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.slotId, slotId) &&
            const DeepCollectionEquality().equals(other.kind, kind) &&
            const DeepCollectionEquality()
                .equals(other.playersInvestments, playersInvestments) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.axis, axis) &&
            const DeepCollectionEquality()
                .equals(other.lettersCount, lettersCount) &&
            const DeepCollectionEquality().equals(other.width, width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(slotId),
      const DeepCollectionEquality().hash(kind),
      const DeepCollectionEquality().hash(playersInvestments),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(axis),
      const DeepCollectionEquality().hash(lettersCount),
      const DeepCollectionEquality().hash(width));

  @JsonKey(ignore: true)
  @override
  _$BookModelCopyWith<_BookModel> get copyWith =>
      __$BookModelCopyWithImpl<_BookModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookModelToJson(this);
  }
}

abstract class _BookModel extends BookModel {
  const factory _BookModel(
      {required final String id,
      required final String slotId,
      required final BookKind kind,
      required final Map<String, int> playersInvestments,
      required final double height,
      required final BookAxis axis,
      required final int lettersCount,
      required final double width}) = _$_BookModel;
  const _BookModel._() : super._();

  factory _BookModel.fromJson(Map<String, dynamic> json) =
      _$_BookModel.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get slotId => throw _privateConstructorUsedError;
  @override
  BookKind get kind => throw _privateConstructorUsedError;
  @override
  Map<String, int> get playersInvestments => throw _privateConstructorUsedError;
  @override
  double get height => throw _privateConstructorUsedError;
  @override
  BookAxis get axis => throw _privateConstructorUsedError;
  @override
  int get lettersCount => throw _privateConstructorUsedError;
  @override

  /// The width should be in the range between
  /// [BookGenerator.minBookWidth, BookGenerator.maxBookWidth]
  double get width => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookModelCopyWith<_BookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BookShelfLevelModel _$BookShelfLevelModelFromJson(Map<String, dynamic> json) {
  return _BookShelfLevelModel.fromJson(json);
}

/// @nodoc
mixin _$BookShelfLevelModel {
  String get id => throw _privateConstructorUsedError;

  /// All untaken books should be kept in the list
  ///
  /// In case if [GamePlayerModel] took new book, the book
  /// should be transfered to his list of books
  List<BookShelfModel> get shelves => throw _privateConstructorUsedError;
  List<GamePlayerModel> get players => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookShelfLevelModelCopyWith<BookShelfLevelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookShelfLevelModelCopyWith<$Res> {
  factory $BookShelfLevelModelCopyWith(
          BookShelfLevelModel value, $Res Function(BookShelfLevelModel) then) =
      _$BookShelfLevelModelCopyWithImpl<$Res>;
  $Res call(
      {String id, List<BookShelfModel> shelves, List<GamePlayerModel> players});
}

/// @nodoc
class _$BookShelfLevelModelCopyWithImpl<$Res>
    implements $BookShelfLevelModelCopyWith<$Res> {
  _$BookShelfLevelModelCopyWithImpl(this._value, this._then);

  final BookShelfLevelModel _value;
  // ignore: unused_field
  final $Res Function(BookShelfLevelModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? shelves = freezed,
    Object? players = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      shelves: shelves == freezed
          ? _value.shelves
          : shelves // ignore: cast_nullable_to_non_nullable
              as List<BookShelfModel>,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<GamePlayerModel>,
    ));
  }
}

/// @nodoc
abstract class _$BookShelfLevelModelCopyWith<$Res>
    implements $BookShelfLevelModelCopyWith<$Res> {
  factory _$BookShelfLevelModelCopyWith(_BookShelfLevelModel value,
          $Res Function(_BookShelfLevelModel) then) =
      __$BookShelfLevelModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, List<BookShelfModel> shelves, List<GamePlayerModel> players});
}

/// @nodoc
class __$BookShelfLevelModelCopyWithImpl<$Res>
    extends _$BookShelfLevelModelCopyWithImpl<$Res>
    implements _$BookShelfLevelModelCopyWith<$Res> {
  __$BookShelfLevelModelCopyWithImpl(
      _BookShelfLevelModel _value, $Res Function(_BookShelfLevelModel) _then)
      : super(_value, (v) => _then(v as _BookShelfLevelModel));

  @override
  _BookShelfLevelModel get _value => super._value as _BookShelfLevelModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? shelves = freezed,
    Object? players = freezed,
  }) {
    return _then(_BookShelfLevelModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      shelves: shelves == freezed
          ? _value.shelves
          : shelves // ignore: cast_nullable_to_non_nullable
              as List<BookShelfModel>,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<GamePlayerModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BookShelfLevelModel extends _BookShelfLevelModel
    with DiagnosticableTreeMixin {
  const _$_BookShelfLevelModel(
      {required this.id,
      required final List<BookShelfModel> shelves,
      required final List<GamePlayerModel> players})
      : _shelves = shelves,
        _players = players,
        super._();

  factory _$_BookShelfLevelModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookShelfLevelModelFromJson(json);

  @override
  final String id;

  /// All untaken books should be kept in the list
  ///
  /// In case if [GamePlayerModel] took new book, the book
  /// should be transfered to his list of books
  final List<BookShelfModel> _shelves;

  /// All untaken books should be kept in the list
  ///
  /// In case if [GamePlayerModel] took new book, the book
  /// should be transfered to his list of books
  @override
  List<BookShelfModel> get shelves {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shelves);
  }

  final List<GamePlayerModel> _players;
  @override
  List<GamePlayerModel> get players {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookShelfLevelModel(id: $id, shelves: $shelves, players: $players)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookShelfLevelModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('shelves', shelves))
      ..add(DiagnosticsProperty('players', players));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookShelfLevelModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.shelves, shelves) &&
            const DeepCollectionEquality().equals(other.players, players));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(shelves),
      const DeepCollectionEquality().hash(players));

  @JsonKey(ignore: true)
  @override
  _$BookShelfLevelModelCopyWith<_BookShelfLevelModel> get copyWith =>
      __$BookShelfLevelModelCopyWithImpl<_BookShelfLevelModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookShelfLevelModelToJson(this);
  }
}

abstract class _BookShelfLevelModel extends BookShelfLevelModel {
  const factory _BookShelfLevelModel(
      {required final String id,
      required final List<BookShelfModel> shelves,
      required final List<GamePlayerModel> players}) = _$_BookShelfLevelModel;
  const _BookShelfLevelModel._() : super._();

  factory _BookShelfLevelModel.fromJson(Map<String, dynamic> json) =
      _$_BookShelfLevelModel.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override

  /// All untaken books should be kept in the list
  ///
  /// In case if [GamePlayerModel] took new book, the book
  /// should be transfered to his list of books
  List<BookShelfModel> get shelves => throw _privateConstructorUsedError;
  @override
  List<GamePlayerModel> get players => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookShelfLevelModelCopyWith<_BookShelfLevelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BookShelfModel _$BookShelfModelFromJson(Map<String, dynamic> json) {
  return _BookShelfModel.fromJson(json);
}

/// @nodoc
mixin _$BookShelfModel {
  String get id => throw _privateConstructorUsedError;
  double get width => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  List<BookShelfSlotModel> get slots => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookShelfModelCopyWith<BookShelfModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookShelfModelCopyWith<$Res> {
  factory $BookShelfModelCopyWith(
          BookShelfModel value, $Res Function(BookShelfModel) then) =
      _$BookShelfModelCopyWithImpl<$Res>;
  $Res call(
      {String id, double width, double height, List<BookShelfSlotModel> slots});
}

/// @nodoc
class _$BookShelfModelCopyWithImpl<$Res>
    implements $BookShelfModelCopyWith<$Res> {
  _$BookShelfModelCopyWithImpl(this._value, this._then);

  final BookShelfModel _value;
  // ignore: unused_field
  final $Res Function(BookShelfModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? slots = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      slots: slots == freezed
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<BookShelfSlotModel>,
    ));
  }
}

/// @nodoc
abstract class _$BookShelfModelCopyWith<$Res>
    implements $BookShelfModelCopyWith<$Res> {
  factory _$BookShelfModelCopyWith(
          _BookShelfModel value, $Res Function(_BookShelfModel) then) =
      __$BookShelfModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, double width, double height, List<BookShelfSlotModel> slots});
}

/// @nodoc
class __$BookShelfModelCopyWithImpl<$Res>
    extends _$BookShelfModelCopyWithImpl<$Res>
    implements _$BookShelfModelCopyWith<$Res> {
  __$BookShelfModelCopyWithImpl(
      _BookShelfModel _value, $Res Function(_BookShelfModel) _then)
      : super(_value, (v) => _then(v as _BookShelfModel));

  @override
  _BookShelfModel get _value => super._value as _BookShelfModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? slots = freezed,
  }) {
    return _then(_BookShelfModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      slots: slots == freezed
          ? _value.slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<BookShelfSlotModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BookShelfModel extends _BookShelfModel with DiagnosticableTreeMixin {
  const _$_BookShelfModel(
      {required this.id,
      required this.width,
      required this.height,
      required final List<BookShelfSlotModel> slots})
      : _slots = slots,
        super._();

  factory _$_BookShelfModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookShelfModelFromJson(json);

  @override
  final String id;
  @override
  final double width;
  @override
  final double height;
  final List<BookShelfSlotModel> _slots;
  @override
  List<BookShelfSlotModel> get slots {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slots);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BookShelfModel(id: $id, width: $width, height: $height, slots: $slots)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookShelfModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('slots', slots));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookShelfModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.slots, slots));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(slots));

  @JsonKey(ignore: true)
  @override
  _$BookShelfModelCopyWith<_BookShelfModel> get copyWith =>
      __$BookShelfModelCopyWithImpl<_BookShelfModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookShelfModelToJson(this);
  }
}

abstract class _BookShelfModel extends BookShelfModel {
  const factory _BookShelfModel(
      {required final String id,
      required final double width,
      required final double height,
      required final List<BookShelfSlotModel> slots}) = _$_BookShelfModel;
  const _BookShelfModel._() : super._();

  factory _BookShelfModel.fromJson(Map<String, dynamic> json) =
      _$_BookShelfModel.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  double get width => throw _privateConstructorUsedError;
  @override
  double get height => throw _privateConstructorUsedError;
  @override
  List<BookShelfSlotModel> get slots => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookShelfModelCopyWith<_BookShelfModel> get copyWith =>
      throw _privateConstructorUsedError;
}

BookShelfSlotModel _$BookShelfSlotModelFromJson(Map<String, dynamic> json) {
  return _BookShelfSlotModel.fromJson(json);
}

/// @nodoc
mixin _$BookShelfSlotModel {
  String get id => throw _privateConstructorUsedError;
  List<BookModel> get books => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookShelfSlotModelCopyWith<BookShelfSlotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookShelfSlotModelCopyWith<$Res> {
  factory $BookShelfSlotModelCopyWith(
          BookShelfSlotModel value, $Res Function(BookShelfSlotModel) then) =
      _$BookShelfSlotModelCopyWithImpl<$Res>;
  $Res call({String id, List<BookModel> books});
}

/// @nodoc
class _$BookShelfSlotModelCopyWithImpl<$Res>
    implements $BookShelfSlotModelCopyWith<$Res> {
  _$BookShelfSlotModelCopyWithImpl(this._value, this._then);

  final BookShelfSlotModel _value;
  // ignore: unused_field
  final $Res Function(BookShelfSlotModel) _then;

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
abstract class _$BookShelfSlotModelCopyWith<$Res>
    implements $BookShelfSlotModelCopyWith<$Res> {
  factory _$BookShelfSlotModelCopyWith(
          _BookShelfSlotModel value, $Res Function(_BookShelfSlotModel) then) =
      __$BookShelfSlotModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, List<BookModel> books});
}

/// @nodoc
class __$BookShelfSlotModelCopyWithImpl<$Res>
    extends _$BookShelfSlotModelCopyWithImpl<$Res>
    implements _$BookShelfSlotModelCopyWith<$Res> {
  __$BookShelfSlotModelCopyWithImpl(
      _BookShelfSlotModel _value, $Res Function(_BookShelfSlotModel) _then)
      : super(_value, (v) => _then(v as _BookShelfSlotModel));

  @override
  _BookShelfSlotModel get _value => super._value as _BookShelfSlotModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? books = freezed,
  }) {
    return _then(_BookShelfSlotModel(
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

@JsonSerializable(explicitToJson: true)
class _$_BookShelfSlotModel extends _BookShelfSlotModel
    with DiagnosticableTreeMixin {
  const _$_BookShelfSlotModel(
      {required this.id, required final List<BookModel> books})
      : _books = books,
        super._();

  factory _$_BookShelfSlotModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookShelfSlotModelFromJson(json);

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
    return 'BookShelfSlotModel(id: $id, books: $books)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BookShelfSlotModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('books', books));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookShelfSlotModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.books, books));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(books));

  @JsonKey(ignore: true)
  @override
  _$BookShelfSlotModelCopyWith<_BookShelfSlotModel> get copyWith =>
      __$BookShelfSlotModelCopyWithImpl<_BookShelfSlotModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookShelfSlotModelToJson(this);
  }
}

abstract class _BookShelfSlotModel extends BookShelfSlotModel {
  const factory _BookShelfSlotModel(
      {required final String id,
      required final List<BookModel> books}) = _$_BookShelfSlotModel;
  const _BookShelfSlotModel._() : super._();

  factory _BookShelfSlotModel.fromJson(Map<String, dynamic> json) =
      _$_BookShelfSlotModel.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  List<BookModel> get books => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BookShelfSlotModelCopyWith<_BookShelfSlotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GameModel _$GameModelFromJson(Map<String, dynamic> json) {
  return _GameModel.fromJson(json);
}

/// @nodoc
mixin _$GameModel {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  List<BookShelfLevelModel> get bookShelfLevels =>
      throw _privateConstructorUsedError;
  String get hostPlayerId => throw _privateConstructorUsedError;
  WordWriterStateModel get wordWriterState =>
      throw _privateConstructorUsedError;
  String? get currentPlayerId => throw _privateConstructorUsedError;
  int get currentBookShelfLevelIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
      List<BookShelfLevelModel> bookShelfLevels,
      String hostPlayerId,
      WordWriterStateModel wordWriterState,
      String? currentPlayerId,
      int currentBookShelfLevelIndex});

  $WordWriterStateModelCopyWith<$Res> get wordWriterState;
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
    Object? bookShelfLevels = freezed,
    Object? hostPlayerId = freezed,
    Object? wordWriterState = freezed,
    Object? currentPlayerId = freezed,
    Object? currentBookShelfLevelIndex = freezed,
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
      bookShelfLevels: bookShelfLevels == freezed
          ? _value.bookShelfLevels
          : bookShelfLevels // ignore: cast_nullable_to_non_nullable
              as List<BookShelfLevelModel>,
      hostPlayerId: hostPlayerId == freezed
          ? _value.hostPlayerId
          : hostPlayerId // ignore: cast_nullable_to_non_nullable
              as String,
      wordWriterState: wordWriterState == freezed
          ? _value.wordWriterState
          : wordWriterState // ignore: cast_nullable_to_non_nullable
              as WordWriterStateModel,
      currentPlayerId: currentPlayerId == freezed
          ? _value.currentPlayerId
          : currentPlayerId // ignore: cast_nullable_to_non_nullable
              as String?,
      currentBookShelfLevelIndex: currentBookShelfLevelIndex == freezed
          ? _value.currentBookShelfLevelIndex
          : currentBookShelfLevelIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $WordWriterStateModelCopyWith<$Res> get wordWriterState {
    return $WordWriterStateModelCopyWith<$Res>(_value.wordWriterState, (value) {
      return _then(_value.copyWith(wordWriterState: value));
    });
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
      List<BookShelfLevelModel> bookShelfLevels,
      String hostPlayerId,
      WordWriterStateModel wordWriterState,
      String? currentPlayerId,
      int currentBookShelfLevelIndex});

  @override
  $WordWriterStateModelCopyWith<$Res> get wordWriterState;
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
    Object? bookShelfLevels = freezed,
    Object? hostPlayerId = freezed,
    Object? wordWriterState = freezed,
    Object? currentPlayerId = freezed,
    Object? currentBookShelfLevelIndex = freezed,
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
      bookShelfLevels: bookShelfLevels == freezed
          ? _value.bookShelfLevels
          : bookShelfLevels // ignore: cast_nullable_to_non_nullable
              as List<BookShelfLevelModel>,
      hostPlayerId: hostPlayerId == freezed
          ? _value.hostPlayerId
          : hostPlayerId // ignore: cast_nullable_to_non_nullable
              as String,
      wordWriterState: wordWriterState == freezed
          ? _value.wordWriterState
          : wordWriterState // ignore: cast_nullable_to_non_nullable
              as WordWriterStateModel,
      currentPlayerId: currentPlayerId == freezed
          ? _value.currentPlayerId
          : currentPlayerId // ignore: cast_nullable_to_non_nullable
              as String?,
      currentBookShelfLevelIndex: currentBookShelfLevelIndex == freezed
          ? _value.currentBookShelfLevelIndex
          : currentBookShelfLevelIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GameModel extends _GameModel with DiagnosticableTreeMixin {
  const _$_GameModel(
      {required this.id,
      required this.createdAt,
      required final List<BookShelfLevelModel> bookShelfLevels,
      required this.hostPlayerId,
      required this.wordWriterState,
      this.currentPlayerId,
      this.currentBookShelfLevelIndex = 0})
      : _bookShelfLevels = bookShelfLevels,
        super._();

  factory _$_GameModel.fromJson(Map<String, dynamic> json) =>
      _$$_GameModelFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  final List<BookShelfLevelModel> _bookShelfLevels;
  @override
  List<BookShelfLevelModel> get bookShelfLevels {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookShelfLevels);
  }

  @override
  final String hostPlayerId;
  @override
  final WordWriterStateModel wordWriterState;
  @override
  final String? currentPlayerId;
  @override
  @JsonKey()
  final int currentBookShelfLevelIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GameModel(id: $id, createdAt: $createdAt, bookShelfLevels: $bookShelfLevels, hostPlayerId: $hostPlayerId, wordWriterState: $wordWriterState, currentPlayerId: $currentPlayerId, currentBookShelfLevelIndex: $currentBookShelfLevelIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GameModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('bookShelfLevels', bookShelfLevels))
      ..add(DiagnosticsProperty('hostPlayerId', hostPlayerId))
      ..add(DiagnosticsProperty('wordWriterState', wordWriterState))
      ..add(DiagnosticsProperty('currentPlayerId', currentPlayerId))
      ..add(DiagnosticsProperty(
          'currentBookShelfLevelIndex', currentBookShelfLevelIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.bookShelfLevels, bookShelfLevels) &&
            const DeepCollectionEquality()
                .equals(other.hostPlayerId, hostPlayerId) &&
            const DeepCollectionEquality()
                .equals(other.wordWriterState, wordWriterState) &&
            const DeepCollectionEquality()
                .equals(other.currentPlayerId, currentPlayerId) &&
            const DeepCollectionEquality().equals(
                other.currentBookShelfLevelIndex, currentBookShelfLevelIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(bookShelfLevels),
      const DeepCollectionEquality().hash(hostPlayerId),
      const DeepCollectionEquality().hash(wordWriterState),
      const DeepCollectionEquality().hash(currentPlayerId),
      const DeepCollectionEquality().hash(currentBookShelfLevelIndex));

  @JsonKey(ignore: true)
  @override
  _$GameModelCopyWith<_GameModel> get copyWith =>
      __$GameModelCopyWithImpl<_GameModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameModelToJson(this);
  }
}

abstract class _GameModel extends GameModel {
  const factory _GameModel(
      {required final String id,
      required final DateTime createdAt,
      required final List<BookShelfLevelModel> bookShelfLevels,
      required final String hostPlayerId,
      required final WordWriterStateModel wordWriterState,
      final String? currentPlayerId,
      final int currentBookShelfLevelIndex}) = _$_GameModel;
  const _GameModel._() : super._();

  factory _GameModel.fromJson(Map<String, dynamic> json) =
      _$_GameModel.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  List<BookShelfLevelModel> get bookShelfLevels =>
      throw _privateConstructorUsedError;
  @override
  String get hostPlayerId => throw _privateConstructorUsedError;
  @override
  WordWriterStateModel get wordWriterState =>
      throw _privateConstructorUsedError;
  @override
  String? get currentPlayerId => throw _privateConstructorUsedError;
  @override
  int get currentBookShelfLevelIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GameModelCopyWith<_GameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GamePlayerModel _$GamePlayerModelFromJson(Map<String, dynamic> json) {
  return _GamePlayerModel.fromJson(json);
}

/// @nodoc
mixin _$GamePlayerModel {
  String get id => throw _privateConstructorUsedError;
  List<BookModel> get books => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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

@JsonSerializable(explicitToJson: true)
class _$_GamePlayerModel extends _GamePlayerModel with DiagnosticableTreeMixin {
  const _$_GamePlayerModel(
      {required this.id, required final List<BookModel> books})
      : _books = books,
        super._();

  factory _$_GamePlayerModel.fromJson(Map<String, dynamic> json) =>
      _$$_GamePlayerModelFromJson(json);

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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(books));

  @JsonKey(ignore: true)
  @override
  _$GamePlayerModelCopyWith<_GamePlayerModel> get copyWith =>
      __$GamePlayerModelCopyWithImpl<_GamePlayerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GamePlayerModelToJson(this);
  }
}

abstract class _GamePlayerModel extends GamePlayerModel {
  const factory _GamePlayerModel(
      {required final String id,
      required final List<BookModel> books}) = _$_GamePlayerModel;
  const _GamePlayerModel._() : super._();

  factory _GamePlayerModel.fromJson(Map<String, dynamic> json) =
      _$_GamePlayerModel.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  List<BookModel> get books => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GamePlayerModelCopyWith<_GamePlayerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayerProfileModel _$PlayerProfileModelFromJson(Map<String, dynamic> json) {
  return _PlayerProfileModel.fromJson(json);
}

/// @nodoc
mixin _$PlayerProfileModel {
  String get id => throw _privateConstructorUsedError;
  int get colorValue => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// The [GameKnowledge] and [GameLetter] will be counted
  /// as highscore based on this [BookModel] list in [GameLevelModel]
  Set<String> get playedGames => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerProfileModelCopyWith<PlayerProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerProfileModelCopyWith<$Res> {
  factory $PlayerProfileModelCopyWith(
          PlayerProfileModel value, $Res Function(PlayerProfileModel) then) =
      _$PlayerProfileModelCopyWithImpl<$Res>;
  $Res call({String id, int colorValue, String name, Set<String> playedGames});
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
    Object? playedGames = freezed,
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
      playedGames: playedGames == freezed
          ? _value.playedGames
          : playedGames // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc
abstract class _$PlayerProfileModelCopyWith<$Res>
    implements $PlayerProfileModelCopyWith<$Res> {
  factory _$PlayerProfileModelCopyWith(
          _PlayerProfileModel value, $Res Function(_PlayerProfileModel) then) =
      __$PlayerProfileModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, int colorValue, String name, Set<String> playedGames});
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
    Object? playedGames = freezed,
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
      playedGames: playedGames == freezed
          ? _value.playedGames
          : playedGames // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PlayerProfileModel extends _PlayerProfileModel
    with DiagnosticableTreeMixin {
  const _$_PlayerProfileModel(
      {required this.id,
      required this.colorValue,
      required this.name,
      required final Set<String> playedGames})
      : _playedGames = playedGames,
        super._();

  factory _$_PlayerProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerProfileModelFromJson(json);

  @override
  final String id;
  @override
  final int colorValue;
  @override
  final String name;

  /// The [GameKnowledge] and [GameLetter] will be counted
  /// as highscore based on this [BookModel] list in [GameLevelModel]
  final Set<String> _playedGames;

  /// The [GameKnowledge] and [GameLetter] will be counted
  /// as highscore based on this [BookModel] list in [GameLevelModel]
  @override
  Set<String> get playedGames {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_playedGames);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PlayerProfileModel(id: $id, colorValue: $colorValue, name: $name, playedGames: $playedGames)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PlayerProfileModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('colorValue', colorValue))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('playedGames', playedGames));
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
                .equals(other.playedGames, playedGames));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(colorValue),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(playedGames));

  @JsonKey(ignore: true)
  @override
  _$PlayerProfileModelCopyWith<_PlayerProfileModel> get copyWith =>
      __$PlayerProfileModelCopyWithImpl<_PlayerProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerProfileModelToJson(this);
  }
}

abstract class _PlayerProfileModel extends PlayerProfileModel {
  const factory _PlayerProfileModel(
      {required final String id,
      required final int colorValue,
      required final String name,
      required final Set<String> playedGames}) = _$_PlayerProfileModel;
  const _PlayerProfileModel._() : super._();

  factory _PlayerProfileModel.fromJson(Map<String, dynamic> json) =
      _$_PlayerProfileModel.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  int get colorValue => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override

  /// The [GameKnowledge] and [GameLetter] will be counted
  /// as highscore based on this [BookModel] list in [GameLevelModel]
  Set<String> get playedGames => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlayerProfileModelCopyWith<_PlayerProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

ScoreModel _$ScoreModelFromJson(Map<String, dynamic> json) {
  return _ScoreModel.fromJson(json);
}

/// @nodoc
mixin _$ScoreModel {
  int get knowledgeCount => throw _privateConstructorUsedError;
  int get lettersCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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

@JsonSerializable(explicitToJson: true)
class _$_ScoreModel extends _ScoreModel with DiagnosticableTreeMixin {
  const _$_ScoreModel({this.knowledgeCount = 0, this.lettersCount = 0})
      : super._();

  factory _$_ScoreModel.fromJson(Map<String, dynamic> json) =>
      _$$_ScoreModelFromJson(json);

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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(knowledgeCount),
      const DeepCollectionEquality().hash(lettersCount));

  @JsonKey(ignore: true)
  @override
  _$ScoreModelCopyWith<_ScoreModel> get copyWith =>
      __$ScoreModelCopyWithImpl<_ScoreModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScoreModelToJson(this);
  }
}

abstract class _ScoreModel extends ScoreModel {
  const factory _ScoreModel(
      {final int knowledgeCount, final int lettersCount}) = _$_ScoreModel;
  const _ScoreModel._() : super._();

  factory _ScoreModel.fromJson(Map<String, dynamic> json) =
      _$_ScoreModel.fromJson;

  @override
  int get knowledgeCount => throw _privateConstructorUsedError;
  @override
  int get lettersCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ScoreModelCopyWith<_ScoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

WordWriterStateModel _$WordWriterStateModelFromJson(Map<String, dynamic> json) {
  return _WordWriterContextModel.fromJson(json);
}

/// @nodoc
mixin _$WordWriterStateModel {
  String get lastWord => throw _privateConstructorUsedError;
  String get leftPartOfWord => throw _privateConstructorUsedError;
  String get middlePartOfWord => throw _privateConstructorUsedError;
  String get rightPartOfWord => throw _privateConstructorUsedError;
  Map<String, String> get writtenWords => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordWriterStateModelCopyWith<WordWriterStateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordWriterStateModelCopyWith<$Res> {
  factory $WordWriterStateModelCopyWith(WordWriterStateModel value,
          $Res Function(WordWriterStateModel) then) =
      _$WordWriterStateModelCopyWithImpl<$Res>;
  $Res call(
      {String lastWord,
      String leftPartOfWord,
      String middlePartOfWord,
      String rightPartOfWord,
      Map<String, String> writtenWords});
}

/// @nodoc
class _$WordWriterStateModelCopyWithImpl<$Res>
    implements $WordWriterStateModelCopyWith<$Res> {
  _$WordWriterStateModelCopyWithImpl(this._value, this._then);

  final WordWriterStateModel _value;
  // ignore: unused_field
  final $Res Function(WordWriterStateModel) _then;

  @override
  $Res call({
    Object? lastWord = freezed,
    Object? leftPartOfWord = freezed,
    Object? middlePartOfWord = freezed,
    Object? rightPartOfWord = freezed,
    Object? writtenWords = freezed,
  }) {
    return _then(_value.copyWith(
      lastWord: lastWord == freezed
          ? _value.lastWord
          : lastWord // ignore: cast_nullable_to_non_nullable
              as String,
      leftPartOfWord: leftPartOfWord == freezed
          ? _value.leftPartOfWord
          : leftPartOfWord // ignore: cast_nullable_to_non_nullable
              as String,
      middlePartOfWord: middlePartOfWord == freezed
          ? _value.middlePartOfWord
          : middlePartOfWord // ignore: cast_nullable_to_non_nullable
              as String,
      rightPartOfWord: rightPartOfWord == freezed
          ? _value.rightPartOfWord
          : rightPartOfWord // ignore: cast_nullable_to_non_nullable
              as String,
      writtenWords: writtenWords == freezed
          ? _value.writtenWords
          : writtenWords // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
abstract class _$WordWriterContextModelCopyWith<$Res>
    implements $WordWriterStateModelCopyWith<$Res> {
  factory _$WordWriterContextModelCopyWith(_WordWriterContextModel value,
          $Res Function(_WordWriterContextModel) then) =
      __$WordWriterContextModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String lastWord,
      String leftPartOfWord,
      String middlePartOfWord,
      String rightPartOfWord,
      Map<String, String> writtenWords});
}

/// @nodoc
class __$WordWriterContextModelCopyWithImpl<$Res>
    extends _$WordWriterStateModelCopyWithImpl<$Res>
    implements _$WordWriterContextModelCopyWith<$Res> {
  __$WordWriterContextModelCopyWithImpl(_WordWriterContextModel _value,
      $Res Function(_WordWriterContextModel) _then)
      : super(_value, (v) => _then(v as _WordWriterContextModel));

  @override
  _WordWriterContextModel get _value => super._value as _WordWriterContextModel;

  @override
  $Res call({
    Object? lastWord = freezed,
    Object? leftPartOfWord = freezed,
    Object? middlePartOfWord = freezed,
    Object? rightPartOfWord = freezed,
    Object? writtenWords = freezed,
  }) {
    return _then(_WordWriterContextModel(
      lastWord: lastWord == freezed
          ? _value.lastWord
          : lastWord // ignore: cast_nullable_to_non_nullable
              as String,
      leftPartOfWord: leftPartOfWord == freezed
          ? _value.leftPartOfWord
          : leftPartOfWord // ignore: cast_nullable_to_non_nullable
              as String,
      middlePartOfWord: middlePartOfWord == freezed
          ? _value.middlePartOfWord
          : middlePartOfWord // ignore: cast_nullable_to_non_nullable
              as String,
      rightPartOfWord: rightPartOfWord == freezed
          ? _value.rightPartOfWord
          : rightPartOfWord // ignore: cast_nullable_to_non_nullable
              as String,
      writtenWords: writtenWords == freezed
          ? _value.writtenWords
          : writtenWords // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WordWriterContextModel extends _WordWriterContextModel
    with DiagnosticableTreeMixin {
  const _$_WordWriterContextModel(
      {required this.lastWord,
      required this.leftPartOfWord,
      required this.middlePartOfWord,
      required this.rightPartOfWord,
      required final Map<String, String> writtenWords})
      : _writtenWords = writtenWords,
        super._();

  factory _$_WordWriterContextModel.fromJson(Map<String, dynamic> json) =>
      _$$_WordWriterContextModelFromJson(json);

  @override
  final String lastWord;
  @override
  final String leftPartOfWord;
  @override
  final String middlePartOfWord;
  @override
  final String rightPartOfWord;
  final Map<String, String> _writtenWords;
  @override
  Map<String, String> get writtenWords {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_writtenWords);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WordWriterStateModel(lastWord: $lastWord, leftPartOfWord: $leftPartOfWord, middlePartOfWord: $middlePartOfWord, rightPartOfWord: $rightPartOfWord, writtenWords: $writtenWords)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WordWriterStateModel'))
      ..add(DiagnosticsProperty('lastWord', lastWord))
      ..add(DiagnosticsProperty('leftPartOfWord', leftPartOfWord))
      ..add(DiagnosticsProperty('middlePartOfWord', middlePartOfWord))
      ..add(DiagnosticsProperty('rightPartOfWord', rightPartOfWord))
      ..add(DiagnosticsProperty('writtenWords', writtenWords));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WordWriterContextModel &&
            const DeepCollectionEquality().equals(other.lastWord, lastWord) &&
            const DeepCollectionEquality()
                .equals(other.leftPartOfWord, leftPartOfWord) &&
            const DeepCollectionEquality()
                .equals(other.middlePartOfWord, middlePartOfWord) &&
            const DeepCollectionEquality()
                .equals(other.rightPartOfWord, rightPartOfWord) &&
            const DeepCollectionEquality()
                .equals(other.writtenWords, writtenWords));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(lastWord),
      const DeepCollectionEquality().hash(leftPartOfWord),
      const DeepCollectionEquality().hash(middlePartOfWord),
      const DeepCollectionEquality().hash(rightPartOfWord),
      const DeepCollectionEquality().hash(writtenWords));

  @JsonKey(ignore: true)
  @override
  _$WordWriterContextModelCopyWith<_WordWriterContextModel> get copyWith =>
      __$WordWriterContextModelCopyWithImpl<_WordWriterContextModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WordWriterContextModelToJson(this);
  }
}

abstract class _WordWriterContextModel extends WordWriterStateModel {
  const factory _WordWriterContextModel(
          {required final String lastWord,
          required final String leftPartOfWord,
          required final String middlePartOfWord,
          required final String rightPartOfWord,
          required final Map<String, String> writtenWords}) =
      _$_WordWriterContextModel;
  const _WordWriterContextModel._() : super._();

  factory _WordWriterContextModel.fromJson(Map<String, dynamic> json) =
      _$_WordWriterContextModel.fromJson;

  @override
  String get lastWord => throw _privateConstructorUsedError;
  @override
  String get leftPartOfWord => throw _privateConstructorUsedError;
  @override
  String get middlePartOfWord => throw _privateConstructorUsedError;
  @override
  String get rightPartOfWord => throw _privateConstructorUsedError;
  @override
  Map<String, String> get writtenWords => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WordWriterContextModelCopyWith<_WordWriterContextModel> get copyWith =>
      throw _privateConstructorUsedError;
}