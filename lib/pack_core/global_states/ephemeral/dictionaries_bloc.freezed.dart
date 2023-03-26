// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionaries_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LiveDictionariesBlocState {
  LocalDictionaryModel get localDictionary =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LiveDictionariesBlocStateCopyWith<LiveDictionariesBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveDictionariesBlocStateCopyWith<$Res> {
  factory $LiveDictionariesBlocStateCopyWith(LiveDictionariesBlocState value,
          $Res Function(LiveDictionariesBlocState) then) =
      _$LiveDictionariesBlocStateCopyWithImpl<$Res, LiveDictionariesBlocState>;
  @useResult
  $Res call({LocalDictionaryModel localDictionary});

  $LocalDictionaryModelCopyWith<$Res> get localDictionary;
}

/// @nodoc
class _$LiveDictionariesBlocStateCopyWithImpl<$Res,
        $Val extends LiveDictionariesBlocState>
    implements $LiveDictionariesBlocStateCopyWith<$Res> {
  _$LiveDictionariesBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localDictionary = null,
  }) {
    return _then(_value.copyWith(
      localDictionary: null == localDictionary
          ? _value.localDictionary
          : localDictionary // ignore: cast_nullable_to_non_nullable
              as LocalDictionaryModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalDictionaryModelCopyWith<$Res> get localDictionary {
    return $LocalDictionaryModelCopyWith<$Res>(_value.localDictionary, (value) {
      return _then(_value.copyWith(localDictionary: value) as $Val);
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
  @useResult
  $Res call({LocalDictionaryModel localDictionary});

  @override
  $LocalDictionaryModelCopyWith<$Res> get localDictionary;
}

/// @nodoc
class __$$_LiveDictionariesBlocStateCopyWithImpl<$Res>
    extends _$LiveDictionariesBlocStateCopyWithImpl<$Res,
        _$_LiveDictionariesBlocState>
    implements _$$_LiveDictionariesBlocStateCopyWith<$Res> {
  __$$_LiveDictionariesBlocStateCopyWithImpl(
      _$_LiveDictionariesBlocState _value,
      $Res Function(_$_LiveDictionariesBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localDictionary = null,
  }) {
    return _then(_$_LiveDictionariesBlocState(
      localDictionary: null == localDictionary
          ? _value.localDictionary
          : localDictionary // ignore: cast_nullable_to_non_nullable
              as LocalDictionaryModel,
    ));
  }
}

/// @nodoc

class _$_LiveDictionariesBlocState implements _LiveDictionariesBlocState {
  const _$_LiveDictionariesBlocState({required this.localDictionary});

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
            (identical(other.localDictionary, localDictionary) ||
                other.localDictionary == localDictionary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localDictionary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LiveDictionariesBlocStateCopyWith<_$_LiveDictionariesBlocState>
      get copyWith => __$$_LiveDictionariesBlocStateCopyWithImpl<
          _$_LiveDictionariesBlocState>(this, _$identity);
}

abstract class _LiveDictionariesBlocState
    implements LiveDictionariesBlocState, DictionariesBlocState {
  const factory _LiveDictionariesBlocState(
          {required final LocalDictionaryModel localDictionary}) =
      _$_LiveDictionariesBlocState;

  @override
  LocalDictionaryModel get localDictionary;
  @override
  @JsonKey(ignore: true)
  _$$_LiveDictionariesBlocStateCopyWith<_$_LiveDictionariesBlocState>
      get copyWith => throw _privateConstructorUsedError;
}
