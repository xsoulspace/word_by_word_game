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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DictionariesBlocState {
  WordsType get wordsType => throw _privateConstructorUsedError;

  /// Create a copy of DictionariesBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DictionariesBlocStateCopyWith<DictionariesBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionariesBlocStateCopyWith<$Res> {
  factory $DictionariesBlocStateCopyWith(
    DictionariesBlocState value,
    $Res Function(DictionariesBlocState) then,
  ) = _$DictionariesBlocStateCopyWithImpl<$Res, DictionariesBlocState>;
  @useResult
  $Res call({WordsType wordsType});
}

/// @nodoc
class _$DictionariesBlocStateCopyWithImpl<
  $Res,
  $Val extends DictionariesBlocState
>
    implements $DictionariesBlocStateCopyWith<$Res> {
  _$DictionariesBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DictionariesBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? wordsType = null}) {
    return _then(
      _value.copyWith(
            wordsType: null == wordsType
                ? _value.wordsType
                : wordsType // ignore: cast_nullable_to_non_nullable
                      as WordsType,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DictionariesBlocStateImplCopyWith<$Res>
    implements $DictionariesBlocStateCopyWith<$Res> {
  factory _$$DictionariesBlocStateImplCopyWith(
    _$DictionariesBlocStateImpl value,
    $Res Function(_$DictionariesBlocStateImpl) then,
  ) = __$$DictionariesBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WordsType wordsType});
}

/// @nodoc
class __$$DictionariesBlocStateImplCopyWithImpl<$Res>
    extends
        _$DictionariesBlocStateCopyWithImpl<$Res, _$DictionariesBlocStateImpl>
    implements _$$DictionariesBlocStateImplCopyWith<$Res> {
  __$$DictionariesBlocStateImplCopyWithImpl(
    _$DictionariesBlocStateImpl _value,
    $Res Function(_$DictionariesBlocStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DictionariesBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? wordsType = null}) {
    return _then(
      _$DictionariesBlocStateImpl(
        wordsType: null == wordsType
            ? _value.wordsType
            : wordsType // ignore: cast_nullable_to_non_nullable
                  as WordsType,
      ),
    );
  }
}

/// @nodoc

class _$DictionariesBlocStateImpl implements _DictionariesBlocState {
  const _$DictionariesBlocStateImpl({this.wordsType = const WordsType({})});

  @override
  @JsonKey()
  final WordsType wordsType;

  @override
  String toString() {
    return 'DictionariesBlocState(wordsType: $wordsType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DictionariesBlocStateImpl &&
            (identical(other.wordsType, wordsType) ||
                other.wordsType == wordsType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, wordsType);

  /// Create a copy of DictionariesBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DictionariesBlocStateImplCopyWith<_$DictionariesBlocStateImpl>
  get copyWith =>
      __$$DictionariesBlocStateImplCopyWithImpl<_$DictionariesBlocStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DictionariesBlocState implements DictionariesBlocState {
  const factory _DictionariesBlocState({final WordsType wordsType}) =
      _$DictionariesBlocStateImpl;

  @override
  WordsType get wordsType;

  /// Create a copy of DictionariesBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DictionariesBlocStateImplCopyWith<_$DictionariesBlocStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
