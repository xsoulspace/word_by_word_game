// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dictionaries_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LiveDictionariesBlocState _$LiveDictionariesBlocStateFromJson(
    Map<String, dynamic> json) {
  return _LiveDictionariesBlocState.fromJson(json);
}

/// @nodoc
mixin _$LiveDictionariesBlocState {
  LocalDictionaryModel get localDictionary =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveDictionariesBlocStateCopyWith<LiveDictionariesBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveDictionariesBlocStateCopyWith<$Res> {
  factory $LiveDictionariesBlocStateCopyWith(LiveDictionariesBlocState value,
          $Res Function(LiveDictionariesBlocState) then) =
      _$LiveDictionariesBlocStateCopyWithImpl<$Res>;
  $Res call({LocalDictionaryModel localDictionary});

  $LocalDictionaryModelCopyWith<$Res> get localDictionary;
}

/// @nodoc
class _$LiveDictionariesBlocStateCopyWithImpl<$Res>
    implements $LiveDictionariesBlocStateCopyWith<$Res> {
  _$LiveDictionariesBlocStateCopyWithImpl(this._value, this._then);

  final LiveDictionariesBlocState _value;
  // ignore: unused_field
  final $Res Function(LiveDictionariesBlocState) _then;

  @override
  $Res call({
    Object? localDictionary = freezed,
  }) {
    return _then(_value.copyWith(
      localDictionary: localDictionary == freezed
          ? _value.localDictionary
          : localDictionary // ignore: cast_nullable_to_non_nullable
              as LocalDictionaryModel,
    ));
  }

  @override
  $LocalDictionaryModelCopyWith<$Res> get localDictionary {
    return $LocalDictionaryModelCopyWith<$Res>(_value.localDictionary, (value) {
      return _then(_value.copyWith(localDictionary: value));
    });
  }
}

/// @nodoc
abstract class _$$_LiveDictionariesBlocStateCopyWith<$Res>
    implements $LiveDictionariesBlocStateCopyWith<$Res> {
  factory _$$_LiveDictionariesBlocStateCopyWith(
          _$_LiveDictionariesBlocState value,
          $Res Function(_$_LiveDictionariesBlocState) then) =
      __$$_LiveDictionariesBlocStateCopyWithImpl<$Res>;
  @override
  $Res call({LocalDictionaryModel localDictionary});

  @override
  $LocalDictionaryModelCopyWith<$Res> get localDictionary;
}

/// @nodoc
class __$$_LiveDictionariesBlocStateCopyWithImpl<$Res>
    extends _$LiveDictionariesBlocStateCopyWithImpl<$Res>
    implements _$$_LiveDictionariesBlocStateCopyWith<$Res> {
  __$$_LiveDictionariesBlocStateCopyWithImpl(
      _$_LiveDictionariesBlocState _value,
      $Res Function(_$_LiveDictionariesBlocState) _then)
      : super(_value, (v) => _then(v as _$_LiveDictionariesBlocState));

  @override
  _$_LiveDictionariesBlocState get _value =>
      super._value as _$_LiveDictionariesBlocState;

  @override
  $Res call({
    Object? localDictionary = freezed,
  }) {
    return _then(_$_LiveDictionariesBlocState(
      localDictionary: localDictionary == freezed
          ? _value.localDictionary
          : localDictionary // ignore: cast_nullable_to_non_nullable
              as LocalDictionaryModel,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_LiveDictionariesBlocState implements _LiveDictionariesBlocState {
  const _$_LiveDictionariesBlocState({required this.localDictionary});

  factory _$_LiveDictionariesBlocState.fromJson(Map<String, dynamic> json) =>
      _$$_LiveDictionariesBlocStateFromJson(json);

  @override
  final LocalDictionaryModel localDictionary;

  @override
  String toString() {
    return 'LiveDictionariesBlocState(localDictionary: $localDictionary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LiveDictionariesBlocState &&
            const DeepCollectionEquality()
                .equals(other.localDictionary, localDictionary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(localDictionary));

  @JsonKey(ignore: true)
  @override
  _$$_LiveDictionariesBlocStateCopyWith<_$_LiveDictionariesBlocState>
      get copyWith => __$$_LiveDictionariesBlocStateCopyWithImpl<
          _$_LiveDictionariesBlocState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LiveDictionariesBlocStateToJson(
      this,
    );
  }
}

abstract class _LiveDictionariesBlocState
    implements LiveDictionariesBlocState, DictionariesBlocState {
  const factory _LiveDictionariesBlocState(
          {required final LocalDictionaryModel localDictionary}) =
      _$_LiveDictionariesBlocState;

  factory _LiveDictionariesBlocState.fromJson(Map<String, dynamic> json) =
      _$_LiveDictionariesBlocState.fromJson;

  @override
  LocalDictionaryModel get localDictionary;
  @override
  @JsonKey(ignore: true)
  _$$_LiveDictionariesBlocStateCopyWith<_$_LiveDictionariesBlocState>
      get copyWith => throw _privateConstructorUsedError;
}
