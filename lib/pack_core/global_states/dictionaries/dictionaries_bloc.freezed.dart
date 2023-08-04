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
mixin _$DictionariesBlocState {
  LocalDictionaryModel get localDictionary =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DictionariesBlocStateCopyWith<DictionariesBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionariesBlocStateCopyWith<$Res> {
  factory $DictionariesBlocStateCopyWith(DictionariesBlocState value,
          $Res Function(DictionariesBlocState) then) =
      _$DictionariesBlocStateCopyWithImpl<$Res, DictionariesBlocState>;
  @useResult
  $Res call({LocalDictionaryModel localDictionary});

  $LocalDictionaryModelCopyWith<$Res> get localDictionary;
}

/// @nodoc
class _$DictionariesBlocStateCopyWithImpl<$Res,
        $Val extends DictionariesBlocState>
    implements $DictionariesBlocStateCopyWith<$Res> {
  _$DictionariesBlocStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_DictionariesBlocStateCopyWith<$Res>
    implements $DictionariesBlocStateCopyWith<$Res> {
  factory _$$_DictionariesBlocStateCopyWith(_$_DictionariesBlocState value,
          $Res Function(_$_DictionariesBlocState) then) =
      __$$_DictionariesBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocalDictionaryModel localDictionary});

  @override
  $LocalDictionaryModelCopyWith<$Res> get localDictionary;
}

/// @nodoc
class __$$_DictionariesBlocStateCopyWithImpl<$Res>
    extends _$DictionariesBlocStateCopyWithImpl<$Res, _$_DictionariesBlocState>
    implements _$$_DictionariesBlocStateCopyWith<$Res> {
  __$$_DictionariesBlocStateCopyWithImpl(_$_DictionariesBlocState _value,
      $Res Function(_$_DictionariesBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localDictionary = null,
  }) {
    return _then(_$_DictionariesBlocState(
      localDictionary: null == localDictionary
          ? _value.localDictionary
          : localDictionary // ignore: cast_nullable_to_non_nullable
              as LocalDictionaryModel,
    ));
  }
}

/// @nodoc

class _$_DictionariesBlocState implements _DictionariesBlocState {
  const _$_DictionariesBlocState(
      {this.localDictionary = const LocalDictionaryModel()});

  @override
  @JsonKey()
  final LocalDictionaryModel localDictionary;

  @override
  String toString() {
    return 'DictionariesBlocState(localDictionary: $localDictionary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DictionariesBlocState &&
            (identical(other.localDictionary, localDictionary) ||
                other.localDictionary == localDictionary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localDictionary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DictionariesBlocStateCopyWith<_$_DictionariesBlocState> get copyWith =>
      __$$_DictionariesBlocStateCopyWithImpl<_$_DictionariesBlocState>(
          this, _$identity);
}

abstract class _DictionariesBlocState implements DictionariesBlocState {
  const factory _DictionariesBlocState(
      {final LocalDictionaryModel localDictionary}) = _$_DictionariesBlocState;

  @override
  LocalDictionaryModel get localDictionary;
  @override
  @JsonKey(ignore: true)
  _$$_DictionariesBlocStateCopyWith<_$_DictionariesBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
