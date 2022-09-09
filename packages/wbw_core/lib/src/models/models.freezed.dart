// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorldDataModel _$WorldDataModelFromJson(Map<String, dynamic> json) {
  return _WorldDataModel.fromJson(json);
}

/// @nodoc
mixin _$WorldDataModel {
  WorldDateTimeModel get datetime => throw _privateConstructorUsedError;
  List<WorldLocationModel> get locations => throw _privateConstructorUsedError;
  List<PlayerModel> get players => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorldDataModelCopyWith<WorldDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorldDataModelCopyWith<$Res> {
  factory $WorldDataModelCopyWith(
          WorldDataModel value, $Res Function(WorldDataModel) then) =
      _$WorldDataModelCopyWithImpl<$Res>;
  $Res call(
      {WorldDateTimeModel datetime,
      List<WorldLocationModel> locations,
      List<PlayerModel> players});

  $WorldDateTimeModelCopyWith<$Res> get datetime;
}

/// @nodoc
class _$WorldDataModelCopyWithImpl<$Res>
    implements $WorldDataModelCopyWith<$Res> {
  _$WorldDataModelCopyWithImpl(this._value, this._then);

  final WorldDataModel _value;
  // ignore: unused_field
  final $Res Function(WorldDataModel) _then;

  @override
  $Res call({
    Object? datetime = freezed,
    Object? locations = freezed,
    Object? players = freezed,
  }) {
    return _then(_value.copyWith(
      datetime: datetime == freezed
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      locations: locations == freezed
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<WorldLocationModel>,
      players: players == freezed
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<PlayerModel>,
    ));
  }

  @override
  $WorldDateTimeModelCopyWith<$Res> get datetime {
    return $WorldDateTimeModelCopyWith<$Res>(_value.datetime, (value) {
      return _then(_value.copyWith(datetime: value));
    });
  }
}

/// @nodoc
abstract class _$$_WorldDataModelCopyWith<$Res>
    implements $WorldDataModelCopyWith<$Res> {
  factory _$$_WorldDataModelCopyWith(
          _$_WorldDataModel value, $Res Function(_$_WorldDataModel) then) =
      __$$_WorldDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {WorldDateTimeModel datetime,
      List<WorldLocationModel> locations,
      List<PlayerModel> players});

  @override
  $WorldDateTimeModelCopyWith<$Res> get datetime;
}

/// @nodoc
class __$$_WorldDataModelCopyWithImpl<$Res>
    extends _$WorldDataModelCopyWithImpl<$Res>
    implements _$$_WorldDataModelCopyWith<$Res> {
  __$$_WorldDataModelCopyWithImpl(
      _$_WorldDataModel _value, $Res Function(_$_WorldDataModel) _then)
      : super(_value, (v) => _then(v as _$_WorldDataModel));

  @override
  _$_WorldDataModel get _value => super._value as _$_WorldDataModel;

  @override
  $Res call({
    Object? datetime = freezed,
    Object? locations = freezed,
    Object? players = freezed,
  }) {
    return _then(_$_WorldDataModel(
      datetime: datetime == freezed
          ? _value.datetime
          : datetime // ignore: cast_nullable_to_non_nullable
              as WorldDateTimeModel,
      locations: locations == freezed
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<WorldLocationModel>,
      players: players == freezed
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<PlayerModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WorldDataModel extends _WorldDataModel {
  const _$_WorldDataModel(
      {this.datetime = const WorldDateTimeModel(),
      final List<WorldLocationModel> locations = const [],
      final List<PlayerModel> players = const []})
      : _locations = locations,
        _players = players,
        super._();

  factory _$_WorldDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_WorldDataModelFromJson(json);

  @override
  @JsonKey()
  final WorldDateTimeModel datetime;
  final List<WorldLocationModel> _locations;
  @override
  @JsonKey()
  List<WorldLocationModel> get locations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  final List<PlayerModel> _players;
  @override
  @JsonKey()
  List<PlayerModel> get players {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  String toString() {
    return 'WorldDataModel(datetime: $datetime, locations: $locations, players: $players)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorldDataModel &&
            const DeepCollectionEquality().equals(other.datetime, datetime) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            const DeepCollectionEquality().equals(other._players, _players));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(datetime),
      const DeepCollectionEquality().hash(_locations),
      const DeepCollectionEquality().hash(_players));

  @JsonKey(ignore: true)
  @override
  _$$_WorldDataModelCopyWith<_$_WorldDataModel> get copyWith =>
      __$$_WorldDataModelCopyWithImpl<_$_WorldDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorldDataModelToJson(
      this,
    );
  }
}

abstract class _WorldDataModel extends WorldDataModel {
  const factory _WorldDataModel(
      {final WorldDateTimeModel datetime,
      final List<WorldLocationModel> locations,
      final List<PlayerModel> players}) = _$_WorldDataModel;
  const _WorldDataModel._() : super._();

  factory _WorldDataModel.fromJson(Map<String, dynamic> json) =
      _$_WorldDataModel.fromJson;

  @override
  WorldDateTimeModel get datetime;
  @override
  List<WorldLocationModel> get locations;
  @override
  List<PlayerModel> get players;
  @override
  @JsonKey(ignore: true)
  _$$_WorldDataModelCopyWith<_$_WorldDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

WorldLocationModel _$WorldLocationModelFromJson(Map<String, dynamic> json) {
  return _WorldLocationModel.fromJson(json);
}

/// @nodoc
mixin _$WorldLocationModel {
  String get id => throw _privateConstructorUsedError;
  WorldLocationType get type => throw _privateConstructorUsedError;
  WorldLocationResourcesModel get resources =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorldLocationModelCopyWith<WorldLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorldLocationModelCopyWith<$Res> {
  factory $WorldLocationModelCopyWith(
          WorldLocationModel value, $Res Function(WorldLocationModel) then) =
      _$WorldLocationModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      WorldLocationType type,
      WorldLocationResourcesModel resources});

  $WorldLocationResourcesModelCopyWith<$Res> get resources;
}

/// @nodoc
class _$WorldLocationModelCopyWithImpl<$Res>
    implements $WorldLocationModelCopyWith<$Res> {
  _$WorldLocationModelCopyWithImpl(this._value, this._then);

  final WorldLocationModel _value;
  // ignore: unused_field
  final $Res Function(WorldLocationModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? resources = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorldLocationType,
      resources: resources == freezed
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as WorldLocationResourcesModel,
    ));
  }

  @override
  $WorldLocationResourcesModelCopyWith<$Res> get resources {
    return $WorldLocationResourcesModelCopyWith<$Res>(_value.resources,
        (value) {
      return _then(_value.copyWith(resources: value));
    });
  }
}

/// @nodoc
abstract class _$$_WorldLocationModelCopyWith<$Res>
    implements $WorldLocationModelCopyWith<$Res> {
  factory _$$_WorldLocationModelCopyWith(_$_WorldLocationModel value,
          $Res Function(_$_WorldLocationModel) then) =
      __$$_WorldLocationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      WorldLocationType type,
      WorldLocationResourcesModel resources});

  @override
  $WorldLocationResourcesModelCopyWith<$Res> get resources;
}

/// @nodoc
class __$$_WorldLocationModelCopyWithImpl<$Res>
    extends _$WorldLocationModelCopyWithImpl<$Res>
    implements _$$_WorldLocationModelCopyWith<$Res> {
  __$$_WorldLocationModelCopyWithImpl(
      _$_WorldLocationModel _value, $Res Function(_$_WorldLocationModel) _then)
      : super(_value, (v) => _then(v as _$_WorldLocationModel));

  @override
  _$_WorldLocationModel get _value => super._value as _$_WorldLocationModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? resources = freezed,
  }) {
    return _then(_$_WorldLocationModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorldLocationType,
      resources: resources == freezed
          ? _value.resources
          : resources // ignore: cast_nullable_to_non_nullable
              as WorldLocationResourcesModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WorldLocationModel extends _WorldLocationModel {
  const _$_WorldLocationModel(
      {required this.id, required this.type, required this.resources})
      : super._();

  factory _$_WorldLocationModel.fromJson(Map<String, dynamic> json) =>
      _$$_WorldLocationModelFromJson(json);

  @override
  final String id;
  @override
  final WorldLocationType type;
  @override
  final WorldLocationResourcesModel resources;

  @override
  String toString() {
    return 'WorldLocationModel(id: $id, type: $type, resources: $resources)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorldLocationModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.resources, resources));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(resources));

  @JsonKey(ignore: true)
  @override
  _$$_WorldLocationModelCopyWith<_$_WorldLocationModel> get copyWith =>
      __$$_WorldLocationModelCopyWithImpl<_$_WorldLocationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorldLocationModelToJson(
      this,
    );
  }
}

abstract class _WorldLocationModel extends WorldLocationModel {
  const factory _WorldLocationModel(
          {required final String id,
          required final WorldLocationType type,
          required final WorldLocationResourcesModel resources}) =
      _$_WorldLocationModel;
  const _WorldLocationModel._() : super._();

  factory _WorldLocationModel.fromJson(Map<String, dynamic> json) =
      _$_WorldLocationModel.fromJson;

  @override
  String get id;
  @override
  WorldLocationType get type;
  @override
  WorldLocationResourcesModel get resources;
  @override
  @JsonKey(ignore: true)
  _$$_WorldLocationModelCopyWith<_$_WorldLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

WorldLocationResourcesModel _$WorldLocationResourcesModelFromJson(
    Map<String, dynamic> json) {
  return _WorldLocationResourcesModel.fromJson(json);
}

/// @nodoc
mixin _$WorldLocationResourcesModel {
  List<PersonModel> get people => throw _privateConstructorUsedError;
  double get money => throw _privateConstructorUsedError;
  double get food => throw _privateConstructorUsedError;
  double get oxygen => throw _privateConstructorUsedError;
  double get water => throw _privateConstructorUsedError;

  /// buildings, structures, environment etc
  List<WorldElementModel> get elements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorldLocationResourcesModelCopyWith<WorldLocationResourcesModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorldLocationResourcesModelCopyWith<$Res> {
  factory $WorldLocationResourcesModelCopyWith(
          WorldLocationResourcesModel value,
          $Res Function(WorldLocationResourcesModel) then) =
      _$WorldLocationResourcesModelCopyWithImpl<$Res>;
  $Res call(
      {List<PersonModel> people,
      double money,
      double food,
      double oxygen,
      double water,
      List<WorldElementModel> elements});
}

/// @nodoc
class _$WorldLocationResourcesModelCopyWithImpl<$Res>
    implements $WorldLocationResourcesModelCopyWith<$Res> {
  _$WorldLocationResourcesModelCopyWithImpl(this._value, this._then);

  final WorldLocationResourcesModel _value;
  // ignore: unused_field
  final $Res Function(WorldLocationResourcesModel) _then;

  @override
  $Res call({
    Object? people = freezed,
    Object? money = freezed,
    Object? food = freezed,
    Object? oxygen = freezed,
    Object? water = freezed,
    Object? elements = freezed,
  }) {
    return _then(_value.copyWith(
      people: people == freezed
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
              as List<PersonModel>,
      money: money == freezed
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as double,
      food: food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as double,
      oxygen: oxygen == freezed
          ? _value.oxygen
          : oxygen // ignore: cast_nullable_to_non_nullable
              as double,
      water: water == freezed
          ? _value.water
          : water // ignore: cast_nullable_to_non_nullable
              as double,
      elements: elements == freezed
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<WorldElementModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_WorldLocationResourcesModelCopyWith<$Res>
    implements $WorldLocationResourcesModelCopyWith<$Res> {
  factory _$$_WorldLocationResourcesModelCopyWith(
          _$_WorldLocationResourcesModel value,
          $Res Function(_$_WorldLocationResourcesModel) then) =
      __$$_WorldLocationResourcesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<PersonModel> people,
      double money,
      double food,
      double oxygen,
      double water,
      List<WorldElementModel> elements});
}

/// @nodoc
class __$$_WorldLocationResourcesModelCopyWithImpl<$Res>
    extends _$WorldLocationResourcesModelCopyWithImpl<$Res>
    implements _$$_WorldLocationResourcesModelCopyWith<$Res> {
  __$$_WorldLocationResourcesModelCopyWithImpl(
      _$_WorldLocationResourcesModel _value,
      $Res Function(_$_WorldLocationResourcesModel) _then)
      : super(_value, (v) => _then(v as _$_WorldLocationResourcesModel));

  @override
  _$_WorldLocationResourcesModel get _value =>
      super._value as _$_WorldLocationResourcesModel;

  @override
  $Res call({
    Object? people = freezed,
    Object? money = freezed,
    Object? food = freezed,
    Object? oxygen = freezed,
    Object? water = freezed,
    Object? elements = freezed,
  }) {
    return _then(_$_WorldLocationResourcesModel(
      people: people == freezed
          ? _value._people
          : people // ignore: cast_nullable_to_non_nullable
              as List<PersonModel>,
      money: money == freezed
          ? _value.money
          : money // ignore: cast_nullable_to_non_nullable
              as double,
      food: food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as double,
      oxygen: oxygen == freezed
          ? _value.oxygen
          : oxygen // ignore: cast_nullable_to_non_nullable
              as double,
      water: water == freezed
          ? _value.water
          : water // ignore: cast_nullable_to_non_nullable
              as double,
      elements: elements == freezed
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<WorldElementModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WorldLocationResourcesModel extends _WorldLocationResourcesModel {
  const _$_WorldLocationResourcesModel(
      {required final List<PersonModel> people,
      required this.money,
      required this.food,
      required this.oxygen,
      required this.water,
      required final List<WorldElementModel> elements})
      : _people = people,
        _elements = elements,
        super._();

  factory _$_WorldLocationResourcesModel.fromJson(Map<String, dynamic> json) =>
      _$$_WorldLocationResourcesModelFromJson(json);

  final List<PersonModel> _people;
  @override
  List<PersonModel> get people {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_people);
  }

  @override
  final double money;
  @override
  final double food;
  @override
  final double oxygen;
  @override
  final double water;

  /// buildings, structures, environment etc
  final List<WorldElementModel> _elements;

  /// buildings, structures, environment etc
  @override
  List<WorldElementModel> get elements {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_elements);
  }

  @override
  String toString() {
    return 'WorldLocationResourcesModel(people: $people, money: $money, food: $food, oxygen: $oxygen, water: $water, elements: $elements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorldLocationResourcesModel &&
            const DeepCollectionEquality().equals(other._people, _people) &&
            const DeepCollectionEquality().equals(other.money, money) &&
            const DeepCollectionEquality().equals(other.food, food) &&
            const DeepCollectionEquality().equals(other.oxygen, oxygen) &&
            const DeepCollectionEquality().equals(other.water, water) &&
            const DeepCollectionEquality().equals(other._elements, _elements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_people),
      const DeepCollectionEquality().hash(money),
      const DeepCollectionEquality().hash(food),
      const DeepCollectionEquality().hash(oxygen),
      const DeepCollectionEquality().hash(water),
      const DeepCollectionEquality().hash(_elements));

  @JsonKey(ignore: true)
  @override
  _$$_WorldLocationResourcesModelCopyWith<_$_WorldLocationResourcesModel>
      get copyWith => __$$_WorldLocationResourcesModelCopyWithImpl<
          _$_WorldLocationResourcesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorldLocationResourcesModelToJson(
      this,
    );
  }
}

abstract class _WorldLocationResourcesModel
    extends WorldLocationResourcesModel {
  const factory _WorldLocationResourcesModel(
          {required final List<PersonModel> people,
          required final double money,
          required final double food,
          required final double oxygen,
          required final double water,
          required final List<WorldElementModel> elements}) =
      _$_WorldLocationResourcesModel;
  const _WorldLocationResourcesModel._() : super._();

  factory _WorldLocationResourcesModel.fromJson(Map<String, dynamic> json) =
      _$_WorldLocationResourcesModel.fromJson;

  @override
  List<PersonModel> get people;
  @override
  double get money;
  @override
  double get food;
  @override
  double get oxygen;
  @override
  double get water;
  @override

  /// buildings, structures, environment etc
  List<WorldElementModel> get elements;
  @override
  @JsonKey(ignore: true)
  _$$_WorldLocationResourcesModelCopyWith<_$_WorldLocationResourcesModel>
      get copyWith => throw _privateConstructorUsedError;
}

PersonModel _$PersonModelFromJson(Map<String, dynamic> json) {
  return _PersonModel.fromJson(json);
}

/// @nodoc
mixin _$PersonModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get health => throw _privateConstructorUsedError;
  int get ageInSeconds => throw _privateConstructorUsedError;
  PersonDemandsModel get demands => throw _privateConstructorUsedError;

  /// skills values
  Map<SkillType, CraftingSkillValueModel> get skills =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonModelCopyWith<PersonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonModelCopyWith<$Res> {
  factory $PersonModelCopyWith(
          PersonModel value, $Res Function(PersonModel) then) =
      _$PersonModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      int health,
      int ageInSeconds,
      PersonDemandsModel demands,
      Map<SkillType, CraftingSkillValueModel> skills});

  $PersonDemandsModelCopyWith<$Res> get demands;
}

/// @nodoc
class _$PersonModelCopyWithImpl<$Res> implements $PersonModelCopyWith<$Res> {
  _$PersonModelCopyWithImpl(this._value, this._then);

  final PersonModel _value;
  // ignore: unused_field
  final $Res Function(PersonModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? health = freezed,
    Object? ageInSeconds = freezed,
    Object? demands = freezed,
    Object? skills = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      health: health == freezed
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as int,
      ageInSeconds: ageInSeconds == freezed
          ? _value.ageInSeconds
          : ageInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      demands: demands == freezed
          ? _value.demands
          : demands // ignore: cast_nullable_to_non_nullable
              as PersonDemandsModel,
      skills: skills == freezed
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as Map<SkillType, CraftingSkillValueModel>,
    ));
  }

  @override
  $PersonDemandsModelCopyWith<$Res> get demands {
    return $PersonDemandsModelCopyWith<$Res>(_value.demands, (value) {
      return _then(_value.copyWith(demands: value));
    });
  }
}

/// @nodoc
abstract class _$$_PersonModelCopyWith<$Res>
    implements $PersonModelCopyWith<$Res> {
  factory _$$_PersonModelCopyWith(
          _$_PersonModel value, $Res Function(_$_PersonModel) then) =
      __$$_PersonModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      int health,
      int ageInSeconds,
      PersonDemandsModel demands,
      Map<SkillType, CraftingSkillValueModel> skills});

  @override
  $PersonDemandsModelCopyWith<$Res> get demands;
}

/// @nodoc
class __$$_PersonModelCopyWithImpl<$Res> extends _$PersonModelCopyWithImpl<$Res>
    implements _$$_PersonModelCopyWith<$Res> {
  __$$_PersonModelCopyWithImpl(
      _$_PersonModel _value, $Res Function(_$_PersonModel) _then)
      : super(_value, (v) => _then(v as _$_PersonModel));

  @override
  _$_PersonModel get _value => super._value as _$_PersonModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? health = freezed,
    Object? ageInSeconds = freezed,
    Object? demands = freezed,
    Object? skills = freezed,
  }) {
    return _then(_$_PersonModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      health: health == freezed
          ? _value.health
          : health // ignore: cast_nullable_to_non_nullable
              as int,
      ageInSeconds: ageInSeconds == freezed
          ? _value.ageInSeconds
          : ageInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      demands: demands == freezed
          ? _value.demands
          : demands // ignore: cast_nullable_to_non_nullable
              as PersonDemandsModel,
      skills: skills == freezed
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as Map<SkillType, CraftingSkillValueModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PersonModel extends _PersonModel {
  const _$_PersonModel(
      {required this.id,
      required this.name,
      required this.health,
      required this.ageInSeconds,
      required this.demands,
      required final Map<SkillType, CraftingSkillValueModel> skills})
      : _skills = skills,
        super._();

  factory _$_PersonModel.fromJson(Map<String, dynamic> json) =>
      _$$_PersonModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int health;
  @override
  final int ageInSeconds;
  @override
  final PersonDemandsModel demands;

  /// skills values
  final Map<SkillType, CraftingSkillValueModel> _skills;

  /// skills values
  @override
  Map<SkillType, CraftingSkillValueModel> get skills {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_skills);
  }

  @override
  String toString() {
    return 'PersonModel(id: $id, name: $name, health: $health, ageInSeconds: $ageInSeconds, demands: $demands, skills: $skills)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.health, health) &&
            const DeepCollectionEquality()
                .equals(other.ageInSeconds, ageInSeconds) &&
            const DeepCollectionEquality().equals(other.demands, demands) &&
            const DeepCollectionEquality().equals(other._skills, _skills));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(health),
      const DeepCollectionEquality().hash(ageInSeconds),
      const DeepCollectionEquality().hash(demands),
      const DeepCollectionEquality().hash(_skills));

  @JsonKey(ignore: true)
  @override
  _$$_PersonModelCopyWith<_$_PersonModel> get copyWith =>
      __$$_PersonModelCopyWithImpl<_$_PersonModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonModelToJson(
      this,
    );
  }
}

abstract class _PersonModel extends PersonModel {
  const factory _PersonModel(
          {required final String id,
          required final String name,
          required final int health,
          required final int ageInSeconds,
          required final PersonDemandsModel demands,
          required final Map<SkillType, CraftingSkillValueModel> skills}) =
      _$_PersonModel;
  const _PersonModel._() : super._();

  factory _PersonModel.fromJson(Map<String, dynamic> json) =
      _$_PersonModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get health;
  @override
  int get ageInSeconds;
  @override
  PersonDemandsModel get demands;
  @override

  /// skills values
  Map<SkillType, CraftingSkillValueModel> get skills;
  @override
  @JsonKey(ignore: true)
  _$$_PersonModelCopyWith<_$_PersonModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PersonDemandsModel _$PersonDemandsModelFromJson(Map<String, dynamic> json) {
  return _PersonDemandsModel.fromJson(json);
}

/// @nodoc
mixin _$PersonDemandsModel {
  double get food => throw _privateConstructorUsedError;
  double get oxygen => throw _privateConstructorUsedError;
  double get water => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonDemandsModelCopyWith<PersonDemandsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonDemandsModelCopyWith<$Res> {
  factory $PersonDemandsModelCopyWith(
          PersonDemandsModel value, $Res Function(PersonDemandsModel) then) =
      _$PersonDemandsModelCopyWithImpl<$Res>;
  $Res call({double food, double oxygen, double water});
}

/// @nodoc
class _$PersonDemandsModelCopyWithImpl<$Res>
    implements $PersonDemandsModelCopyWith<$Res> {
  _$PersonDemandsModelCopyWithImpl(this._value, this._then);

  final PersonDemandsModel _value;
  // ignore: unused_field
  final $Res Function(PersonDemandsModel) _then;

  @override
  $Res call({
    Object? food = freezed,
    Object? oxygen = freezed,
    Object? water = freezed,
  }) {
    return _then(_value.copyWith(
      food: food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as double,
      oxygen: oxygen == freezed
          ? _value.oxygen
          : oxygen // ignore: cast_nullable_to_non_nullable
              as double,
      water: water == freezed
          ? _value.water
          : water // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_PersonDemandsModelCopyWith<$Res>
    implements $PersonDemandsModelCopyWith<$Res> {
  factory _$$_PersonDemandsModelCopyWith(_$_PersonDemandsModel value,
          $Res Function(_$_PersonDemandsModel) then) =
      __$$_PersonDemandsModelCopyWithImpl<$Res>;
  @override
  $Res call({double food, double oxygen, double water});
}

/// @nodoc
class __$$_PersonDemandsModelCopyWithImpl<$Res>
    extends _$PersonDemandsModelCopyWithImpl<$Res>
    implements _$$_PersonDemandsModelCopyWith<$Res> {
  __$$_PersonDemandsModelCopyWithImpl(
      _$_PersonDemandsModel _value, $Res Function(_$_PersonDemandsModel) _then)
      : super(_value, (v) => _then(v as _$_PersonDemandsModel));

  @override
  _$_PersonDemandsModel get _value => super._value as _$_PersonDemandsModel;

  @override
  $Res call({
    Object? food = freezed,
    Object? oxygen = freezed,
    Object? water = freezed,
  }) {
    return _then(_$_PersonDemandsModel(
      food: food == freezed
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as double,
      oxygen: oxygen == freezed
          ? _value.oxygen
          : oxygen // ignore: cast_nullable_to_non_nullable
              as double,
      water: water == freezed
          ? _value.water
          : water // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PersonDemandsModel extends _PersonDemandsModel {
  const _$_PersonDemandsModel(
      {required this.food, required this.oxygen, required this.water})
      : super._();

  factory _$_PersonDemandsModel.fromJson(Map<String, dynamic> json) =>
      _$$_PersonDemandsModelFromJson(json);

  @override
  final double food;
  @override
  final double oxygen;
  @override
  final double water;

  @override
  String toString() {
    return 'PersonDemandsModel(food: $food, oxygen: $oxygen, water: $water)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PersonDemandsModel &&
            const DeepCollectionEquality().equals(other.food, food) &&
            const DeepCollectionEquality().equals(other.oxygen, oxygen) &&
            const DeepCollectionEquality().equals(other.water, water));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(food),
      const DeepCollectionEquality().hash(oxygen),
      const DeepCollectionEquality().hash(water));

  @JsonKey(ignore: true)
  @override
  _$$_PersonDemandsModelCopyWith<_$_PersonDemandsModel> get copyWith =>
      __$$_PersonDemandsModelCopyWithImpl<_$_PersonDemandsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonDemandsModelToJson(
      this,
    );
  }
}

abstract class _PersonDemandsModel extends PersonDemandsModel {
  const factory _PersonDemandsModel(
      {required final double food,
      required final double oxygen,
      required final double water}) = _$_PersonDemandsModel;
  const _PersonDemandsModel._() : super._();

  factory _PersonDemandsModel.fromJson(Map<String, dynamic> json) =
      _$_PersonDemandsModel.fromJson;

  @override
  double get food;
  @override
  double get oxygen;
  @override
  double get water;
  @override
  @JsonKey(ignore: true)
  _$$_PersonDemandsModelCopyWith<_$_PersonDemandsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

WorldDateTimeModel _$WorldDateTimeModelFromJson(Map<String, dynamic> json) {
  return _WorldDateTime.fromJson(json);
}

/// @nodoc
mixin _$WorldDateTimeModel {
  int get second => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorldDateTimeModelCopyWith<WorldDateTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorldDateTimeModelCopyWith<$Res> {
  factory $WorldDateTimeModelCopyWith(
          WorldDateTimeModel value, $Res Function(WorldDateTimeModel) then) =
      _$WorldDateTimeModelCopyWithImpl<$Res>;
  $Res call({int second});
}

/// @nodoc
class _$WorldDateTimeModelCopyWithImpl<$Res>
    implements $WorldDateTimeModelCopyWith<$Res> {
  _$WorldDateTimeModelCopyWithImpl(this._value, this._then);

  final WorldDateTimeModel _value;
  // ignore: unused_field
  final $Res Function(WorldDateTimeModel) _then;

  @override
  $Res call({
    Object? second = freezed,
  }) {
    return _then(_value.copyWith(
      second: second == freezed
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_WorldDateTimeCopyWith<$Res>
    implements $WorldDateTimeModelCopyWith<$Res> {
  factory _$$_WorldDateTimeCopyWith(
          _$_WorldDateTime value, $Res Function(_$_WorldDateTime) then) =
      __$$_WorldDateTimeCopyWithImpl<$Res>;
  @override
  $Res call({int second});
}

/// @nodoc
class __$$_WorldDateTimeCopyWithImpl<$Res>
    extends _$WorldDateTimeModelCopyWithImpl<$Res>
    implements _$$_WorldDateTimeCopyWith<$Res> {
  __$$_WorldDateTimeCopyWithImpl(
      _$_WorldDateTime _value, $Res Function(_$_WorldDateTime) _then)
      : super(_value, (v) => _then(v as _$_WorldDateTime));

  @override
  _$_WorldDateTime get _value => super._value as _$_WorldDateTime;

  @override
  $Res call({
    Object? second = freezed,
  }) {
    return _then(_$_WorldDateTime(
      second: second == freezed
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WorldDateTime extends _WorldDateTime {
  const _$_WorldDateTime({this.second = 0}) : super._();

  factory _$_WorldDateTime.fromJson(Map<String, dynamic> json) =>
      _$$_WorldDateTimeFromJson(json);

  @override
  @JsonKey()
  final int second;

  @override
  String toString() {
    return 'WorldDateTimeModel(second: $second)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorldDateTime &&
            const DeepCollectionEquality().equals(other.second, second));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(second));

  @JsonKey(ignore: true)
  @override
  _$$_WorldDateTimeCopyWith<_$_WorldDateTime> get copyWith =>
      __$$_WorldDateTimeCopyWithImpl<_$_WorldDateTime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorldDateTimeToJson(
      this,
    );
  }
}

abstract class _WorldDateTime extends WorldDateTimeModel {
  const factory _WorldDateTime({final int second}) = _$_WorldDateTime;
  const _WorldDateTime._() : super._();

  factory _WorldDateTime.fromJson(Map<String, dynamic> json) =
      _$_WorldDateTime.fromJson;

  @override
  int get second;
  @override
  @JsonKey(ignore: true)
  _$$_WorldDateTimeCopyWith<_$_WorldDateTime> get copyWith =>
      throw _privateConstructorUsedError;
}

WorldDateModel _$WorldDateModelFromJson(Map<String, dynamic> json) {
  return _WorldDate.fromJson(json);
}

/// @nodoc
mixin _$WorldDateModel {
  int get year => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorldDateModelCopyWith<WorldDateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorldDateModelCopyWith<$Res> {
  factory $WorldDateModelCopyWith(
          WorldDateModel value, $Res Function(WorldDateModel) then) =
      _$WorldDateModelCopyWithImpl<$Res>;
  $Res call({int year, int month, int day});
}

/// @nodoc
class _$WorldDateModelCopyWithImpl<$Res>
    implements $WorldDateModelCopyWith<$Res> {
  _$WorldDateModelCopyWithImpl(this._value, this._then);

  final WorldDateModel _value;
  // ignore: unused_field
  final $Res Function(WorldDateModel) _then;

  @override
  $Res call({
    Object? year = freezed,
    Object? month = freezed,
    Object? day = freezed,
  }) {
    return _then(_value.copyWith(
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_WorldDateCopyWith<$Res>
    implements $WorldDateModelCopyWith<$Res> {
  factory _$$_WorldDateCopyWith(
          _$_WorldDate value, $Res Function(_$_WorldDate) then) =
      __$$_WorldDateCopyWithImpl<$Res>;
  @override
  $Res call({int year, int month, int day});
}

/// @nodoc
class __$$_WorldDateCopyWithImpl<$Res>
    extends _$WorldDateModelCopyWithImpl<$Res>
    implements _$$_WorldDateCopyWith<$Res> {
  __$$_WorldDateCopyWithImpl(
      _$_WorldDate _value, $Res Function(_$_WorldDate) _then)
      : super(_value, (v) => _then(v as _$_WorldDate));

  @override
  _$_WorldDate get _value => super._value as _$_WorldDate;

  @override
  $Res call({
    Object? year = freezed,
    Object? month = freezed,
    Object? day = freezed,
  }) {
    return _then(_$_WorldDate(
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WorldDate extends _WorldDate {
  const _$_WorldDate({this.year = 0, this.month = 0, this.day = 0}) : super._();

  factory _$_WorldDate.fromJson(Map<String, dynamic> json) =>
      _$$_WorldDateFromJson(json);

  @override
  @JsonKey()
  final int year;
  @override
  @JsonKey()
  final int month;
  @override
  @JsonKey()
  final int day;

  @override
  String toString() {
    return 'WorldDateModel(year: $year, month: $month, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorldDate &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality().equals(other.day, day));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(day));

  @JsonKey(ignore: true)
  @override
  _$$_WorldDateCopyWith<_$_WorldDate> get copyWith =>
      __$$_WorldDateCopyWithImpl<_$_WorldDate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorldDateToJson(
      this,
    );
  }
}

abstract class _WorldDate extends WorldDateModel {
  const factory _WorldDate({final int year, final int month, final int day}) =
      _$_WorldDate;
  const _WorldDate._() : super._();

  factory _WorldDate.fromJson(Map<String, dynamic> json) =
      _$_WorldDate.fromJson;

  @override
  int get year;
  @override
  int get month;
  @override
  int get day;
  @override
  @JsonKey(ignore: true)
  _$$_WorldDateCopyWith<_$_WorldDate> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayerModel _$PlayerModelFromJson(Map<String, dynamic> json) {
  return _PlayerModel.fromJson(json);
}

/// @nodoc
mixin _$PlayerModel {
  String get id => throw _privateConstructorUsedError;
  PlayerType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerModelCopyWith<PlayerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerModelCopyWith<$Res> {
  factory $PlayerModelCopyWith(
          PlayerModel value, $Res Function(PlayerModel) then) =
      _$PlayerModelCopyWithImpl<$Res>;
  $Res call({String id, PlayerType type});
}

/// @nodoc
class _$PlayerModelCopyWithImpl<$Res> implements $PlayerModelCopyWith<$Res> {
  _$PlayerModelCopyWithImpl(this._value, this._then);

  final PlayerModel _value;
  // ignore: unused_field
  final $Res Function(PlayerModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlayerType,
    ));
  }
}

/// @nodoc
abstract class _$$_PlayerModelCopyWith<$Res>
    implements $PlayerModelCopyWith<$Res> {
  factory _$$_PlayerModelCopyWith(
          _$_PlayerModel value, $Res Function(_$_PlayerModel) then) =
      __$$_PlayerModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, PlayerType type});
}

/// @nodoc
class __$$_PlayerModelCopyWithImpl<$Res> extends _$PlayerModelCopyWithImpl<$Res>
    implements _$$_PlayerModelCopyWith<$Res> {
  __$$_PlayerModelCopyWithImpl(
      _$_PlayerModel _value, $Res Function(_$_PlayerModel) _then)
      : super(_value, (v) => _then(v as _$_PlayerModel));

  @override
  _$_PlayerModel get _value => super._value as _$_PlayerModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_PlayerModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlayerType,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PlayerModel extends _PlayerModel {
  const _$_PlayerModel({required this.id, this.type = PlayerType.ai})
      : super._();

  factory _$_PlayerModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlayerModelFromJson(json);

  @override
  final String id;
  @override
  @JsonKey()
  final PlayerType type;

  @override
  String toString() {
    return 'PlayerModel(id: $id, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$$_PlayerModelCopyWith<_$_PlayerModel> get copyWith =>
      __$$_PlayerModelCopyWithImpl<_$_PlayerModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlayerModelToJson(
      this,
    );
  }
}

abstract class _PlayerModel extends PlayerModel {
  const factory _PlayerModel(
      {required final String id, final PlayerType type}) = _$_PlayerModel;
  const _PlayerModel._() : super._();

  factory _PlayerModel.fromJson(Map<String, dynamic> json) =
      _$_PlayerModel.fromJson;

  @override
  String get id;
  @override
  PlayerType get type;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerModelCopyWith<_$_PlayerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

WorldElementModel _$WorldElementModelFromJson(Map<String, dynamic> json) {
  return _WorldElementModel.fromJson(json);
}

/// @nodoc
mixin _$WorldElementModel {
  WorldElementType get type => throw _privateConstructorUsedError;

  /// current durability of the element. This property can be changed
  /// from time to time and in a sense it is a health.
  double get durability => throw _privateConstructorUsedError;
  double get maxDurability => throw _privateConstructorUsedError;
  WorldElementPositionModel get position => throw _privateConstructorUsedError;

  /// If this [WorldElementModel] is near other [WorldElementModel]
  /// that in the [elementsForDegradation] then this element
  Map<WorldElementType, ElementDegradationValueModel> get degradationElements =>
      throw _privateConstructorUsedError;

  /// [CraftingElementValueModel] that required to creft this [WorldElementModel].
  Map<WorldElementType, CraftingElementValueModel>
      get requiredElementsToCraft => throw _privateConstructorUsedError;

  /// [CraftingSkillValueModel] that required to creft this [WorldElementModel].
  Map<SkillType, CraftingSkillValueModel> get requiredSkillsToCraft =>
      throw _privateConstructorUsedError;

  /// [CraftingSkillValueModel] that will receved for creating this [WorldElementModel].
  Map<SkillType, CraftingSkillValueModel> get rewardSkillsFromCraft =>
      throw _privateConstructorUsedError;
  @JsonKey(
      fromJson: worldElementModelAttributesFromJson,
      toJson: worldElementModelAttributesToJson)
  Object? get attributes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorldElementModelCopyWith<WorldElementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorldElementModelCopyWith<$Res> {
  factory $WorldElementModelCopyWith(
          WorldElementModel value, $Res Function(WorldElementModel) then) =
      _$WorldElementModelCopyWithImpl<$Res>;
  $Res call(
      {WorldElementType type,
      double durability,
      double maxDurability,
      WorldElementPositionModel position,
      Map<WorldElementType, ElementDegradationValueModel> degradationElements,
      Map<WorldElementType, CraftingElementValueModel> requiredElementsToCraft,
      Map<SkillType, CraftingSkillValueModel> requiredSkillsToCraft,
      Map<SkillType, CraftingSkillValueModel> rewardSkillsFromCraft,
      @JsonKey(fromJson: worldElementModelAttributesFromJson, toJson: worldElementModelAttributesToJson)
          Object? attributes});

  $WorldElementPositionModelCopyWith<$Res> get position;
}

/// @nodoc
class _$WorldElementModelCopyWithImpl<$Res>
    implements $WorldElementModelCopyWith<$Res> {
  _$WorldElementModelCopyWithImpl(this._value, this._then);

  final WorldElementModel _value;
  // ignore: unused_field
  final $Res Function(WorldElementModel) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? durability = freezed,
    Object? maxDurability = freezed,
    Object? position = freezed,
    Object? degradationElements = freezed,
    Object? requiredElementsToCraft = freezed,
    Object? requiredSkillsToCraft = freezed,
    Object? rewardSkillsFromCraft = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorldElementType,
      durability: durability == freezed
          ? _value.durability
          : durability // ignore: cast_nullable_to_non_nullable
              as double,
      maxDurability: maxDurability == freezed
          ? _value.maxDurability
          : maxDurability // ignore: cast_nullable_to_non_nullable
              as double,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as WorldElementPositionModel,
      degradationElements: degradationElements == freezed
          ? _value.degradationElements
          : degradationElements // ignore: cast_nullable_to_non_nullable
              as Map<WorldElementType, ElementDegradationValueModel>,
      requiredElementsToCraft: requiredElementsToCraft == freezed
          ? _value.requiredElementsToCraft
          : requiredElementsToCraft // ignore: cast_nullable_to_non_nullable
              as Map<WorldElementType, CraftingElementValueModel>,
      requiredSkillsToCraft: requiredSkillsToCraft == freezed
          ? _value.requiredSkillsToCraft
          : requiredSkillsToCraft // ignore: cast_nullable_to_non_nullable
              as Map<SkillType, CraftingSkillValueModel>,
      rewardSkillsFromCraft: rewardSkillsFromCraft == freezed
          ? _value.rewardSkillsFromCraft
          : rewardSkillsFromCraft // ignore: cast_nullable_to_non_nullable
              as Map<SkillType, CraftingSkillValueModel>,
      attributes: attributes == freezed ? _value.attributes : attributes,
    ));
  }

  @override
  $WorldElementPositionModelCopyWith<$Res> get position {
    return $WorldElementPositionModelCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }
}

/// @nodoc
abstract class _$$_WorldElementModelCopyWith<$Res>
    implements $WorldElementModelCopyWith<$Res> {
  factory _$$_WorldElementModelCopyWith(_$_WorldElementModel value,
          $Res Function(_$_WorldElementModel) then) =
      __$$_WorldElementModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {WorldElementType type,
      double durability,
      double maxDurability,
      WorldElementPositionModel position,
      Map<WorldElementType, ElementDegradationValueModel> degradationElements,
      Map<WorldElementType, CraftingElementValueModel> requiredElementsToCraft,
      Map<SkillType, CraftingSkillValueModel> requiredSkillsToCraft,
      Map<SkillType, CraftingSkillValueModel> rewardSkillsFromCraft,
      @JsonKey(fromJson: worldElementModelAttributesFromJson, toJson: worldElementModelAttributesToJson)
          Object? attributes});

  @override
  $WorldElementPositionModelCopyWith<$Res> get position;
}

/// @nodoc
class __$$_WorldElementModelCopyWithImpl<$Res>
    extends _$WorldElementModelCopyWithImpl<$Res>
    implements _$$_WorldElementModelCopyWith<$Res> {
  __$$_WorldElementModelCopyWithImpl(
      _$_WorldElementModel _value, $Res Function(_$_WorldElementModel) _then)
      : super(_value, (v) => _then(v as _$_WorldElementModel));

  @override
  _$_WorldElementModel get _value => super._value as _$_WorldElementModel;

  @override
  $Res call({
    Object? type = freezed,
    Object? durability = freezed,
    Object? maxDurability = freezed,
    Object? position = freezed,
    Object? degradationElements = freezed,
    Object? requiredElementsToCraft = freezed,
    Object? requiredSkillsToCraft = freezed,
    Object? rewardSkillsFromCraft = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$_WorldElementModel(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorldElementType,
      durability: durability == freezed
          ? _value.durability
          : durability // ignore: cast_nullable_to_non_nullable
              as double,
      maxDurability: maxDurability == freezed
          ? _value.maxDurability
          : maxDurability // ignore: cast_nullable_to_non_nullable
              as double,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as WorldElementPositionModel,
      degradationElements: degradationElements == freezed
          ? _value._degradationElements
          : degradationElements // ignore: cast_nullable_to_non_nullable
              as Map<WorldElementType, ElementDegradationValueModel>,
      requiredElementsToCraft: requiredElementsToCraft == freezed
          ? _value._requiredElementsToCraft
          : requiredElementsToCraft // ignore: cast_nullable_to_non_nullable
              as Map<WorldElementType, CraftingElementValueModel>,
      requiredSkillsToCraft: requiredSkillsToCraft == freezed
          ? _value._requiredSkillsToCraft
          : requiredSkillsToCraft // ignore: cast_nullable_to_non_nullable
              as Map<SkillType, CraftingSkillValueModel>,
      rewardSkillsFromCraft: rewardSkillsFromCraft == freezed
          ? _value._rewardSkillsFromCraft
          : rewardSkillsFromCraft // ignore: cast_nullable_to_non_nullable
              as Map<SkillType, CraftingSkillValueModel>,
      attributes: attributes == freezed ? _value.attributes : attributes,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WorldElementModel extends _WorldElementModel {
  const _$_WorldElementModel(
      {required this.type,
      this.durability = 100.0,
      this.maxDurability = 100.0,
      this.position = const WorldElementPositionModel(),
      final Map<WorldElementType, ElementDegradationValueModel>
          degradationElements = const {},
      final Map<WorldElementType, CraftingElementValueModel>
          requiredElementsToCraft = const {},
      final Map<SkillType, CraftingSkillValueModel> requiredSkillsToCraft =
          const {},
      final Map<SkillType, CraftingSkillValueModel> rewardSkillsFromCraft =
          const {},
      @JsonKey(fromJson: worldElementModelAttributesFromJson, toJson: worldElementModelAttributesToJson)
          this.attributes})
      : _degradationElements = degradationElements,
        _requiredElementsToCraft = requiredElementsToCraft,
        _requiredSkillsToCraft = requiredSkillsToCraft,
        _rewardSkillsFromCraft = rewardSkillsFromCraft,
        super._();

  factory _$_WorldElementModel.fromJson(Map<String, dynamic> json) =>
      _$$_WorldElementModelFromJson(json);

  @override
  final WorldElementType type;

  /// current durability of the element. This property can be changed
  /// from time to time and in a sense it is a health.
  @override
  @JsonKey()
  final double durability;
  @override
  @JsonKey()
  final double maxDurability;
  @override
  @JsonKey()
  final WorldElementPositionModel position;

  /// If this [WorldElementModel] is near other [WorldElementModel]
  /// that in the [elementsForDegradation] then this element
  final Map<WorldElementType, ElementDegradationValueModel>
      _degradationElements;

  /// If this [WorldElementModel] is near other [WorldElementModel]
  /// that in the [elementsForDegradation] then this element
  @override
  @JsonKey()
  Map<WorldElementType, ElementDegradationValueModel> get degradationElements {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_degradationElements);
  }

  /// [CraftingElementValueModel] that required to creft this [WorldElementModel].
  final Map<WorldElementType, CraftingElementValueModel>
      _requiredElementsToCraft;

  /// [CraftingElementValueModel] that required to creft this [WorldElementModel].
  @override
  @JsonKey()
  Map<WorldElementType, CraftingElementValueModel> get requiredElementsToCraft {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_requiredElementsToCraft);
  }

  /// [CraftingSkillValueModel] that required to creft this [WorldElementModel].
  final Map<SkillType, CraftingSkillValueModel> _requiredSkillsToCraft;

  /// [CraftingSkillValueModel] that required to creft this [WorldElementModel].
  @override
  @JsonKey()
  Map<SkillType, CraftingSkillValueModel> get requiredSkillsToCraft {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_requiredSkillsToCraft);
  }

  /// [CraftingSkillValueModel] that will receved for creating this [WorldElementModel].
  final Map<SkillType, CraftingSkillValueModel> _rewardSkillsFromCraft;

  /// [CraftingSkillValueModel] that will receved for creating this [WorldElementModel].
  @override
  @JsonKey()
  Map<SkillType, CraftingSkillValueModel> get rewardSkillsFromCraft {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rewardSkillsFromCraft);
  }

  @override
  @JsonKey(
      fromJson: worldElementModelAttributesFromJson,
      toJson: worldElementModelAttributesToJson)
  final Object? attributes;

  @override
  String toString() {
    return 'WorldElementModel(type: $type, durability: $durability, maxDurability: $maxDurability, position: $position, degradationElements: $degradationElements, requiredElementsToCraft: $requiredElementsToCraft, requiredSkillsToCraft: $requiredSkillsToCraft, rewardSkillsFromCraft: $rewardSkillsFromCraft, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorldElementModel &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.durability, durability) &&
            const DeepCollectionEquality()
                .equals(other.maxDurability, maxDurability) &&
            const DeepCollectionEquality().equals(other.position, position) &&
            const DeepCollectionEquality()
                .equals(other._degradationElements, _degradationElements) &&
            const DeepCollectionEquality().equals(
                other._requiredElementsToCraft, _requiredElementsToCraft) &&
            const DeepCollectionEquality()
                .equals(other._requiredSkillsToCraft, _requiredSkillsToCraft) &&
            const DeepCollectionEquality()
                .equals(other._rewardSkillsFromCraft, _rewardSkillsFromCraft) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(durability),
      const DeepCollectionEquality().hash(maxDurability),
      const DeepCollectionEquality().hash(position),
      const DeepCollectionEquality().hash(_degradationElements),
      const DeepCollectionEquality().hash(_requiredElementsToCraft),
      const DeepCollectionEquality().hash(_requiredSkillsToCraft),
      const DeepCollectionEquality().hash(_rewardSkillsFromCraft),
      const DeepCollectionEquality().hash(attributes));

  @JsonKey(ignore: true)
  @override
  _$$_WorldElementModelCopyWith<_$_WorldElementModel> get copyWith =>
      __$$_WorldElementModelCopyWithImpl<_$_WorldElementModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorldElementModelToJson(
      this,
    );
  }
}

abstract class _WorldElementModel extends WorldElementModel {
  const factory _WorldElementModel(
      {required final WorldElementType type,
      final double durability,
      final double maxDurability,
      final WorldElementPositionModel position,
      final Map<WorldElementType, ElementDegradationValueModel>
          degradationElements,
      final Map<WorldElementType, CraftingElementValueModel>
          requiredElementsToCraft,
      final Map<SkillType, CraftingSkillValueModel> requiredSkillsToCraft,
      final Map<SkillType, CraftingSkillValueModel> rewardSkillsFromCraft,
      @JsonKey(fromJson: worldElementModelAttributesFromJson, toJson: worldElementModelAttributesToJson)
          final Object? attributes}) = _$_WorldElementModel;
  const _WorldElementModel._() : super._();

  factory _WorldElementModel.fromJson(Map<String, dynamic> json) =
      _$_WorldElementModel.fromJson;

  @override
  WorldElementType get type;
  @override

  /// current durability of the element. This property can be changed
  /// from time to time and in a sense it is a health.
  double get durability;
  @override
  double get maxDurability;
  @override
  WorldElementPositionModel get position;
  @override

  /// If this [WorldElementModel] is near other [WorldElementModel]
  /// that in the [elementsForDegradation] then this element
  Map<WorldElementType, ElementDegradationValueModel> get degradationElements;
  @override

  /// [CraftingElementValueModel] that required to creft this [WorldElementModel].
  Map<WorldElementType, CraftingElementValueModel> get requiredElementsToCraft;
  @override

  /// [CraftingSkillValueModel] that required to creft this [WorldElementModel].
  Map<SkillType, CraftingSkillValueModel> get requiredSkillsToCraft;
  @override

  /// [CraftingSkillValueModel] that will receved for creating this [WorldElementModel].
  Map<SkillType, CraftingSkillValueModel> get rewardSkillsFromCraft;
  @override
  @JsonKey(
      fromJson: worldElementModelAttributesFromJson,
      toJson: worldElementModelAttributesToJson)
  Object? get attributes;
  @override
  @JsonKey(ignore: true)
  _$$_WorldElementModelCopyWith<_$_WorldElementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

WorldElementPositionModel _$WorldElementPositionModelFromJson(
    Map<String, dynamic> json) {
  return _WorldElementPositionModel.fromJson(json);
}

/// @nodoc
mixin _$WorldElementPositionModel {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorldElementPositionModelCopyWith<WorldElementPositionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorldElementPositionModelCopyWith<$Res> {
  factory $WorldElementPositionModelCopyWith(WorldElementPositionModel value,
          $Res Function(WorldElementPositionModel) then) =
      _$WorldElementPositionModelCopyWithImpl<$Res>;
  $Res call({int x, int y});
}

/// @nodoc
class _$WorldElementPositionModelCopyWithImpl<$Res>
    implements $WorldElementPositionModelCopyWith<$Res> {
  _$WorldElementPositionModelCopyWithImpl(this._value, this._then);

  final WorldElementPositionModel _value;
  // ignore: unused_field
  final $Res Function(WorldElementPositionModel) _then;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_WorldElementPositionModelCopyWith<$Res>
    implements $WorldElementPositionModelCopyWith<$Res> {
  factory _$$_WorldElementPositionModelCopyWith(
          _$_WorldElementPositionModel value,
          $Res Function(_$_WorldElementPositionModel) then) =
      __$$_WorldElementPositionModelCopyWithImpl<$Res>;
  @override
  $Res call({int x, int y});
}

/// @nodoc
class __$$_WorldElementPositionModelCopyWithImpl<$Res>
    extends _$WorldElementPositionModelCopyWithImpl<$Res>
    implements _$$_WorldElementPositionModelCopyWith<$Res> {
  __$$_WorldElementPositionModelCopyWithImpl(
      _$_WorldElementPositionModel _value,
      $Res Function(_$_WorldElementPositionModel) _then)
      : super(_value, (v) => _then(v as _$_WorldElementPositionModel));

  @override
  _$_WorldElementPositionModel get _value =>
      super._value as _$_WorldElementPositionModel;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_$_WorldElementPositionModel(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WorldElementPositionModel extends _WorldElementPositionModel {
  const _$_WorldElementPositionModel({this.x = 0, this.y = 0}) : super._();

  factory _$_WorldElementPositionModel.fromJson(Map<String, dynamic> json) =>
      _$$_WorldElementPositionModelFromJson(json);

  @override
  @JsonKey()
  final int x;
  @override
  @JsonKey()
  final int y;

  @override
  String toString() {
    return 'WorldElementPositionModel(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WorldElementPositionModel &&
            const DeepCollectionEquality().equals(other.x, x) &&
            const DeepCollectionEquality().equals(other.y, y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(x),
      const DeepCollectionEquality().hash(y));

  @JsonKey(ignore: true)
  @override
  _$$_WorldElementPositionModelCopyWith<_$_WorldElementPositionModel>
      get copyWith => __$$_WorldElementPositionModelCopyWithImpl<
          _$_WorldElementPositionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WorldElementPositionModelToJson(
      this,
    );
  }
}

abstract class _WorldElementPositionModel extends WorldElementPositionModel {
  const factory _WorldElementPositionModel({final int x, final int y}) =
      _$_WorldElementPositionModel;
  const _WorldElementPositionModel._() : super._();

  factory _WorldElementPositionModel.fromJson(Map<String, dynamic> json) =
      _$_WorldElementPositionModel.fromJson;

  @override
  int get x;
  @override
  int get y;
  @override
  @JsonKey(ignore: true)
  _$$_WorldElementPositionModelCopyWith<_$_WorldElementPositionModel>
      get copyWith => throw _privateConstructorUsedError;
}

ElementDegradationValueModel _$ElementDegradationValueModelFromJson(
    Map<String, dynamic> json) {
  return _ElementDegradationValueModel.fromJson(json);
}

/// @nodoc
mixin _$ElementDegradationValueModel {
  WorldElementType get worldElementType => throw _privateConstructorUsedError;

  /// How fast this element should destroy the element
  double get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElementDegradationValueModelCopyWith<ElementDegradationValueModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementDegradationValueModelCopyWith<$Res> {
  factory $ElementDegradationValueModelCopyWith(
          ElementDegradationValueModel value,
          $Res Function(ElementDegradationValueModel) then) =
      _$ElementDegradationValueModelCopyWithImpl<$Res>;
  $Res call({WorldElementType worldElementType, double rate});
}

/// @nodoc
class _$ElementDegradationValueModelCopyWithImpl<$Res>
    implements $ElementDegradationValueModelCopyWith<$Res> {
  _$ElementDegradationValueModelCopyWithImpl(this._value, this._then);

  final ElementDegradationValueModel _value;
  // ignore: unused_field
  final $Res Function(ElementDegradationValueModel) _then;

  @override
  $Res call({
    Object? worldElementType = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      worldElementType: worldElementType == freezed
          ? _value.worldElementType
          : worldElementType // ignore: cast_nullable_to_non_nullable
              as WorldElementType,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_ElementDegradationValueModelCopyWith<$Res>
    implements $ElementDegradationValueModelCopyWith<$Res> {
  factory _$$_ElementDegradationValueModelCopyWith(
          _$_ElementDegradationValueModel value,
          $Res Function(_$_ElementDegradationValueModel) then) =
      __$$_ElementDegradationValueModelCopyWithImpl<$Res>;
  @override
  $Res call({WorldElementType worldElementType, double rate});
}

/// @nodoc
class __$$_ElementDegradationValueModelCopyWithImpl<$Res>
    extends _$ElementDegradationValueModelCopyWithImpl<$Res>
    implements _$$_ElementDegradationValueModelCopyWith<$Res> {
  __$$_ElementDegradationValueModelCopyWithImpl(
      _$_ElementDegradationValueModel _value,
      $Res Function(_$_ElementDegradationValueModel) _then)
      : super(_value, (v) => _then(v as _$_ElementDegradationValueModel));

  @override
  _$_ElementDegradationValueModel get _value =>
      super._value as _$_ElementDegradationValueModel;

  @override
  $Res call({
    Object? worldElementType = freezed,
    Object? rate = freezed,
  }) {
    return _then(_$_ElementDegradationValueModel(
      worldElementType: worldElementType == freezed
          ? _value.worldElementType
          : worldElementType // ignore: cast_nullable_to_non_nullable
              as WorldElementType,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ElementDegradationValueModel extends _ElementDegradationValueModel {
  const _$_ElementDegradationValueModel(
      {required this.worldElementType, required this.rate})
      : super._();

  factory _$_ElementDegradationValueModel.fromJson(Map<String, dynamic> json) =>
      _$$_ElementDegradationValueModelFromJson(json);

  @override
  final WorldElementType worldElementType;

  /// How fast this element should destroy the element
  @override
  final double rate;

  @override
  String toString() {
    return 'ElementDegradationValueModel(worldElementType: $worldElementType, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElementDegradationValueModel &&
            const DeepCollectionEquality()
                .equals(other.worldElementType, worldElementType) &&
            const DeepCollectionEquality().equals(other.rate, rate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(worldElementType),
      const DeepCollectionEquality().hash(rate));

  @JsonKey(ignore: true)
  @override
  _$$_ElementDegradationValueModelCopyWith<_$_ElementDegradationValueModel>
      get copyWith => __$$_ElementDegradationValueModelCopyWithImpl<
          _$_ElementDegradationValueModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElementDegradationValueModelToJson(
      this,
    );
  }
}

abstract class _ElementDegradationValueModel
    extends ElementDegradationValueModel {
  const factory _ElementDegradationValueModel(
      {required final WorldElementType worldElementType,
      required final double rate}) = _$_ElementDegradationValueModel;
  const _ElementDegradationValueModel._() : super._();

  factory _ElementDegradationValueModel.fromJson(Map<String, dynamic> json) =
      _$_ElementDegradationValueModel.fromJson;

  @override
  WorldElementType get worldElementType;
  @override

  /// How fast this element should destroy the element
  double get rate;
  @override
  @JsonKey(ignore: true)
  _$$_ElementDegradationValueModelCopyWith<_$_ElementDegradationValueModel>
      get copyWith => throw _privateConstructorUsedError;
}

CraftingElementValueModel _$CraftingElementValueModelFromJson(
    Map<String, dynamic> json) {
  return _CraftingElementValueModel.fromJson(json);
}

/// @nodoc
mixin _$CraftingElementValueModel {
  WorldElementType get type => throw _privateConstructorUsedError;
  double get minValue => throw _privateConstructorUsedError;
  double get maxValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CraftingElementValueModelCopyWith<CraftingElementValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CraftingElementValueModelCopyWith<$Res> {
  factory $CraftingElementValueModelCopyWith(CraftingElementValueModel value,
          $Res Function(CraftingElementValueModel) then) =
      _$CraftingElementValueModelCopyWithImpl<$Res>;
  $Res call({WorldElementType type, double minValue, double maxValue});
}

/// @nodoc
class _$CraftingElementValueModelCopyWithImpl<$Res>
    implements $CraftingElementValueModelCopyWith<$Res> {
  _$CraftingElementValueModelCopyWithImpl(this._value, this._then);

  final CraftingElementValueModel _value;
  // ignore: unused_field
  final $Res Function(CraftingElementValueModel) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? minValue = freezed,
    Object? maxValue = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorldElementType,
      minValue: minValue == freezed
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxValue: maxValue == freezed
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_CraftingElementValueModelCopyWith<$Res>
    implements $CraftingElementValueModelCopyWith<$Res> {
  factory _$$_CraftingElementValueModelCopyWith(
          _$_CraftingElementValueModel value,
          $Res Function(_$_CraftingElementValueModel) then) =
      __$$_CraftingElementValueModelCopyWithImpl<$Res>;
  @override
  $Res call({WorldElementType type, double minValue, double maxValue});
}

/// @nodoc
class __$$_CraftingElementValueModelCopyWithImpl<$Res>
    extends _$CraftingElementValueModelCopyWithImpl<$Res>
    implements _$$_CraftingElementValueModelCopyWith<$Res> {
  __$$_CraftingElementValueModelCopyWithImpl(
      _$_CraftingElementValueModel _value,
      $Res Function(_$_CraftingElementValueModel) _then)
      : super(_value, (v) => _then(v as _$_CraftingElementValueModel));

  @override
  _$_CraftingElementValueModel get _value =>
      super._value as _$_CraftingElementValueModel;

  @override
  $Res call({
    Object? type = freezed,
    Object? minValue = freezed,
    Object? maxValue = freezed,
  }) {
    return _then(_$_CraftingElementValueModel(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as WorldElementType,
      minValue: minValue == freezed
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double,
      maxValue: maxValue == freezed
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CraftingElementValueModel extends _CraftingElementValueModel {
  const _$_CraftingElementValueModel(
      {required this.type, required this.minValue, this.maxValue = 0.0})
      : super._();

  factory _$_CraftingElementValueModel.fromJson(Map<String, dynamic> json) =>
      _$$_CraftingElementValueModelFromJson(json);

  @override
  final WorldElementType type;
  @override
  final double minValue;
  @override
  @JsonKey()
  final double maxValue;

  @override
  String toString() {
    return 'CraftingElementValueModel(type: $type, minValue: $minValue, maxValue: $maxValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CraftingElementValueModel &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.minValue, minValue) &&
            const DeepCollectionEquality().equals(other.maxValue, maxValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(minValue),
      const DeepCollectionEquality().hash(maxValue));

  @JsonKey(ignore: true)
  @override
  _$$_CraftingElementValueModelCopyWith<_$_CraftingElementValueModel>
      get copyWith => __$$_CraftingElementValueModelCopyWithImpl<
          _$_CraftingElementValueModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CraftingElementValueModelToJson(
      this,
    );
  }
}

abstract class _CraftingElementValueModel extends CraftingElementValueModel {
  const factory _CraftingElementValueModel(
      {required final WorldElementType type,
      required final double minValue,
      final double maxValue}) = _$_CraftingElementValueModel;
  const _CraftingElementValueModel._() : super._();

  factory _CraftingElementValueModel.fromJson(Map<String, dynamic> json) =
      _$_CraftingElementValueModel.fromJson;

  @override
  WorldElementType get type;
  @override
  double get minValue;
  @override
  double get maxValue;
  @override
  @JsonKey(ignore: true)
  _$$_CraftingElementValueModelCopyWith<_$_CraftingElementValueModel>
      get copyWith => throw _privateConstructorUsedError;
}

CraftingSkillValueModel _$CraftingSkillValueModelFromJson(
    Map<String, dynamic> json) {
  return _CraftingSkillValueModel.fromJson(json);
}

/// @nodoc
mixin _$CraftingSkillValueModel {
  SkillType get type => throw _privateConstructorUsedError;

  /// If the [skillLevel] is greater then use skill level
  /// the [WorldElement] should be invisible to the user
  int get skillLevel => throw _privateConstructorUsedError;

  /// [modifier] is a parameter which defines how hard for
  /// Artisan is to craft this [WorldElement]
  ///
  /// for example: it increases durability by
  /// been deviding time delta in seconds to modifier value
  /// delta = 2
  /// modifier = 3
  ///
  /// result = delta / modifier = 2 / 3 = durability increase
  double get modifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CraftingSkillValueModelCopyWith<CraftingSkillValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CraftingSkillValueModelCopyWith<$Res> {
  factory $CraftingSkillValueModelCopyWith(CraftingSkillValueModel value,
          $Res Function(CraftingSkillValueModel) then) =
      _$CraftingSkillValueModelCopyWithImpl<$Res>;
  $Res call({SkillType type, int skillLevel, double modifier});
}

/// @nodoc
class _$CraftingSkillValueModelCopyWithImpl<$Res>
    implements $CraftingSkillValueModelCopyWith<$Res> {
  _$CraftingSkillValueModelCopyWithImpl(this._value, this._then);

  final CraftingSkillValueModel _value;
  // ignore: unused_field
  final $Res Function(CraftingSkillValueModel) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? skillLevel = freezed,
    Object? modifier = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SkillType,
      skillLevel: skillLevel == freezed
          ? _value.skillLevel
          : skillLevel // ignore: cast_nullable_to_non_nullable
              as int,
      modifier: modifier == freezed
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_CraftingSkillValueModelCopyWith<$Res>
    implements $CraftingSkillValueModelCopyWith<$Res> {
  factory _$$_CraftingSkillValueModelCopyWith(_$_CraftingSkillValueModel value,
          $Res Function(_$_CraftingSkillValueModel) then) =
      __$$_CraftingSkillValueModelCopyWithImpl<$Res>;
  @override
  $Res call({SkillType type, int skillLevel, double modifier});
}

/// @nodoc
class __$$_CraftingSkillValueModelCopyWithImpl<$Res>
    extends _$CraftingSkillValueModelCopyWithImpl<$Res>
    implements _$$_CraftingSkillValueModelCopyWith<$Res> {
  __$$_CraftingSkillValueModelCopyWithImpl(_$_CraftingSkillValueModel _value,
      $Res Function(_$_CraftingSkillValueModel) _then)
      : super(_value, (v) => _then(v as _$_CraftingSkillValueModel));

  @override
  _$_CraftingSkillValueModel get _value =>
      super._value as _$_CraftingSkillValueModel;

  @override
  $Res call({
    Object? type = freezed,
    Object? skillLevel = freezed,
    Object? modifier = freezed,
  }) {
    return _then(_$_CraftingSkillValueModel(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SkillType,
      skillLevel: skillLevel == freezed
          ? _value.skillLevel
          : skillLevel // ignore: cast_nullable_to_non_nullable
              as int,
      modifier: modifier == freezed
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_CraftingSkillValueModel extends _CraftingSkillValueModel {
  const _$_CraftingSkillValueModel(
      {required this.type, this.skillLevel = 1, this.modifier = 1})
      : super._();

  factory _$_CraftingSkillValueModel.fromJson(Map<String, dynamic> json) =>
      _$$_CraftingSkillValueModelFromJson(json);

  @override
  final SkillType type;

  /// If the [skillLevel] is greater then use skill level
  /// the [WorldElement] should be invisible to the user
  @override
  @JsonKey()
  final int skillLevel;

  /// [modifier] is a parameter which defines how hard for
  /// Artisan is to craft this [WorldElement]
  ///
  /// for example: it increases durability by
  /// been deviding time delta in seconds to modifier value
  /// delta = 2
  /// modifier = 3
  ///
  /// result = delta / modifier = 2 / 3 = durability increase
  @override
  @JsonKey()
  final double modifier;

  @override
  String toString() {
    return 'CraftingSkillValueModel(type: $type, skillLevel: $skillLevel, modifier: $modifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CraftingSkillValueModel &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.skillLevel, skillLevel) &&
            const DeepCollectionEquality().equals(other.modifier, modifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(skillLevel),
      const DeepCollectionEquality().hash(modifier));

  @JsonKey(ignore: true)
  @override
  _$$_CraftingSkillValueModelCopyWith<_$_CraftingSkillValueModel>
      get copyWith =>
          __$$_CraftingSkillValueModelCopyWithImpl<_$_CraftingSkillValueModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CraftingSkillValueModelToJson(
      this,
    );
  }
}

abstract class _CraftingSkillValueModel extends CraftingSkillValueModel {
  const factory _CraftingSkillValueModel(
      {required final SkillType type,
      final int skillLevel,
      final double modifier}) = _$_CraftingSkillValueModel;
  const _CraftingSkillValueModel._() : super._();

  factory _CraftingSkillValueModel.fromJson(Map<String, dynamic> json) =
      _$_CraftingSkillValueModel.fromJson;

  @override
  SkillType get type;
  @override

  /// If the [skillLevel] is greater then use skill level
  /// the [WorldElement] should be invisible to the user
  int get skillLevel;
  @override

  /// [modifier] is a parameter which defines how hard for
  /// Artisan is to craft this [WorldElement]
  ///
  /// for example: it increases durability by
  /// been deviding time delta in seconds to modifier value
  /// delta = 2
  /// modifier = 3
  ///
  /// result = delta / modifier = 2 / 3 = durability increase
  double get modifier;
  @override
  @JsonKey(ignore: true)
  _$$_CraftingSkillValueModelCopyWith<_$_CraftingSkillValueModel>
      get copyWith => throw _privateConstructorUsedError;
}

WritingWorldElementAttributes _$WritingWorldElementAttributesFromJson(
    Map<String, dynamic> json) {
  return _WritingWorldElementAttributes.fromJson(json);
}

/// @nodoc
mixin _$WritingWorldElementAttributes {
  WorldElementType get elementType => throw _privateConstructorUsedError;
  WritingGenre get genre => throw _privateConstructorUsedError;
  WritingGraphicsUsage get graphicsUsage => throw _privateConstructorUsedError;
  WritingVolume get volume => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WritingWorldElementAttributesCopyWith<WritingWorldElementAttributes>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WritingWorldElementAttributesCopyWith<$Res> {
  factory $WritingWorldElementAttributesCopyWith(
          WritingWorldElementAttributes value,
          $Res Function(WritingWorldElementAttributes) then) =
      _$WritingWorldElementAttributesCopyWithImpl<$Res>;
  $Res call(
      {WorldElementType elementType,
      WritingGenre genre,
      WritingGraphicsUsage graphicsUsage,
      WritingVolume volume});
}

/// @nodoc
class _$WritingWorldElementAttributesCopyWithImpl<$Res>
    implements $WritingWorldElementAttributesCopyWith<$Res> {
  _$WritingWorldElementAttributesCopyWithImpl(this._value, this._then);

  final WritingWorldElementAttributes _value;
  // ignore: unused_field
  final $Res Function(WritingWorldElementAttributes) _then;

  @override
  $Res call({
    Object? elementType = freezed,
    Object? genre = freezed,
    Object? graphicsUsage = freezed,
    Object? volume = freezed,
  }) {
    return _then(_value.copyWith(
      elementType: elementType == freezed
          ? _value.elementType
          : elementType // ignore: cast_nullable_to_non_nullable
              as WorldElementType,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as WritingGenre,
      graphicsUsage: graphicsUsage == freezed
          ? _value.graphicsUsage
          : graphicsUsage // ignore: cast_nullable_to_non_nullable
              as WritingGraphicsUsage,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as WritingVolume,
    ));
  }
}

/// @nodoc
abstract class _$$_WritingWorldElementAttributesCopyWith<$Res>
    implements $WritingWorldElementAttributesCopyWith<$Res> {
  factory _$$_WritingWorldElementAttributesCopyWith(
          _$_WritingWorldElementAttributes value,
          $Res Function(_$_WritingWorldElementAttributes) then) =
      __$$_WritingWorldElementAttributesCopyWithImpl<$Res>;
  @override
  $Res call(
      {WorldElementType elementType,
      WritingGenre genre,
      WritingGraphicsUsage graphicsUsage,
      WritingVolume volume});
}

/// @nodoc
class __$$_WritingWorldElementAttributesCopyWithImpl<$Res>
    extends _$WritingWorldElementAttributesCopyWithImpl<$Res>
    implements _$$_WritingWorldElementAttributesCopyWith<$Res> {
  __$$_WritingWorldElementAttributesCopyWithImpl(
      _$_WritingWorldElementAttributes _value,
      $Res Function(_$_WritingWorldElementAttributes) _then)
      : super(_value, (v) => _then(v as _$_WritingWorldElementAttributes));

  @override
  _$_WritingWorldElementAttributes get _value =>
      super._value as _$_WritingWorldElementAttributes;

  @override
  $Res call({
    Object? elementType = freezed,
    Object? genre = freezed,
    Object? graphicsUsage = freezed,
    Object? volume = freezed,
  }) {
    return _then(_$_WritingWorldElementAttributes(
      elementType: elementType == freezed
          ? _value.elementType
          : elementType // ignore: cast_nullable_to_non_nullable
              as WorldElementType,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as WritingGenre,
      graphicsUsage: graphicsUsage == freezed
          ? _value.graphicsUsage
          : graphicsUsage // ignore: cast_nullable_to_non_nullable
              as WritingGraphicsUsage,
      volume: volume == freezed
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as WritingVolume,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_WritingWorldElementAttributes extends _WritingWorldElementAttributes {
  const _$_WritingWorldElementAttributes(
      {required this.elementType,
      required this.genre,
      required this.graphicsUsage,
      required this.volume})
      : super._();

  factory _$_WritingWorldElementAttributes.fromJson(
          Map<String, dynamic> json) =>
      _$$_WritingWorldElementAttributesFromJson(json);

  @override
  final WorldElementType elementType;
  @override
  final WritingGenre genre;
  @override
  final WritingGraphicsUsage graphicsUsage;
  @override
  final WritingVolume volume;

  @override
  String toString() {
    return 'WritingWorldElementAttributes(elementType: $elementType, genre: $genre, graphicsUsage: $graphicsUsage, volume: $volume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WritingWorldElementAttributes &&
            const DeepCollectionEquality()
                .equals(other.elementType, elementType) &&
            const DeepCollectionEquality().equals(other.genre, genre) &&
            const DeepCollectionEquality()
                .equals(other.graphicsUsage, graphicsUsage) &&
            const DeepCollectionEquality().equals(other.volume, volume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(elementType),
      const DeepCollectionEquality().hash(genre),
      const DeepCollectionEquality().hash(graphicsUsage),
      const DeepCollectionEquality().hash(volume));

  @JsonKey(ignore: true)
  @override
  _$$_WritingWorldElementAttributesCopyWith<_$_WritingWorldElementAttributes>
      get copyWith => __$$_WritingWorldElementAttributesCopyWithImpl<
          _$_WritingWorldElementAttributes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WritingWorldElementAttributesToJson(
      this,
    );
  }
}

abstract class _WritingWorldElementAttributes
    extends WritingWorldElementAttributes {
  const factory _WritingWorldElementAttributes(
      {required final WorldElementType elementType,
      required final WritingGenre genre,
      required final WritingGraphicsUsage graphicsUsage,
      required final WritingVolume volume}) = _$_WritingWorldElementAttributes;
  const _WritingWorldElementAttributes._() : super._();

  factory _WritingWorldElementAttributes.fromJson(Map<String, dynamic> json) =
      _$_WritingWorldElementAttributes.fromJson;

  @override
  WorldElementType get elementType;
  @override
  WritingGenre get genre;
  @override
  WritingGraphicsUsage get graphicsUsage;
  @override
  WritingVolume get volume;
  @override
  @JsonKey(ignore: true)
  _$$_WritingWorldElementAttributesCopyWith<_$_WritingWorldElementAttributes>
      get copyWith => throw _privateConstructorUsedError;
}
