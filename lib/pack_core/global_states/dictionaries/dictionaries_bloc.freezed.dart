// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dictionaries_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DictionariesBlocState {

 WordsType get wordsType;
/// Create a copy of DictionariesBlocState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DictionariesBlocStateCopyWith<DictionariesBlocState> get copyWith => _$DictionariesBlocStateCopyWithImpl<DictionariesBlocState>(this as DictionariesBlocState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DictionariesBlocState&&(identical(other.wordsType, wordsType) || other.wordsType == wordsType));
}


@override
int get hashCode => Object.hash(runtimeType,wordsType);

@override
String toString() {
  return 'DictionariesBlocState(wordsType: $wordsType)';
}


}

/// @nodoc
abstract mixin class $DictionariesBlocStateCopyWith<$Res>  {
  factory $DictionariesBlocStateCopyWith(DictionariesBlocState value, $Res Function(DictionariesBlocState) _then) = _$DictionariesBlocStateCopyWithImpl;
@useResult
$Res call({
 WordsType wordsType
});




}
/// @nodoc
class _$DictionariesBlocStateCopyWithImpl<$Res>
    implements $DictionariesBlocStateCopyWith<$Res> {
  _$DictionariesBlocStateCopyWithImpl(this._self, this._then);

  final DictionariesBlocState _self;
  final $Res Function(DictionariesBlocState) _then;

/// Create a copy of DictionariesBlocState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? wordsType = null,}) {
  return _then(_self.copyWith(
wordsType: null == wordsType ? _self.wordsType : wordsType // ignore: cast_nullable_to_non_nullable
as WordsType,
  ));
}

}


/// @nodoc


class _DictionariesBlocState implements DictionariesBlocState {
  const _DictionariesBlocState({this.wordsType = const WordsType({})});
  

@override@JsonKey() final  WordsType wordsType;

/// Create a copy of DictionariesBlocState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DictionariesBlocStateCopyWith<_DictionariesBlocState> get copyWith => __$DictionariesBlocStateCopyWithImpl<_DictionariesBlocState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DictionariesBlocState&&(identical(other.wordsType, wordsType) || other.wordsType == wordsType));
}


@override
int get hashCode => Object.hash(runtimeType,wordsType);

@override
String toString() {
  return 'DictionariesBlocState(wordsType: $wordsType)';
}


}

/// @nodoc
abstract mixin class _$DictionariesBlocStateCopyWith<$Res> implements $DictionariesBlocStateCopyWith<$Res> {
  factory _$DictionariesBlocStateCopyWith(_DictionariesBlocState value, $Res Function(_DictionariesBlocState) _then) = __$DictionariesBlocStateCopyWithImpl;
@override @useResult
$Res call({
 WordsType wordsType
});




}
/// @nodoc
class __$DictionariesBlocStateCopyWithImpl<$Res>
    implements _$DictionariesBlocStateCopyWith<$Res> {
  __$DictionariesBlocStateCopyWithImpl(this._self, this._then);

  final _DictionariesBlocState _self;
  final $Res Function(_DictionariesBlocState) _then;

/// Create a copy of DictionariesBlocState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? wordsType = null,}) {
  return _then(_DictionariesBlocState(
wordsType: null == wordsType ? _self.wordsType : wordsType // ignore: cast_nullable_to_non_nullable
as WordsType,
  ));
}


}

// dart format on
