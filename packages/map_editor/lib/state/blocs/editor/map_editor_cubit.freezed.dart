// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_editor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapEditorBlocState {
  bool get isEditing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapEditorBlocStateCopyWith<MapEditorBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapEditorBlocStateCopyWith<$Res> {
  factory $MapEditorBlocStateCopyWith(
          MapEditorBlocState value, $Res Function(MapEditorBlocState) then) =
      _$MapEditorBlocStateCopyWithImpl<$Res, MapEditorBlocState>;
  @useResult
  $Res call({bool isEditing});
}

/// @nodoc
class _$MapEditorBlocStateCopyWithImpl<$Res, $Val extends MapEditorBlocState>
    implements $MapEditorBlocStateCopyWith<$Res> {
  _$MapEditorBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEditing = null,
  }) {
    return _then(_value.copyWith(
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapEditorBlocStateImplCopyWith<$Res>
    implements $MapEditorBlocStateCopyWith<$Res> {
  factory _$$MapEditorBlocStateImplCopyWith(_$MapEditorBlocStateImpl value,
          $Res Function(_$MapEditorBlocStateImpl) then) =
      __$$MapEditorBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isEditing});
}

/// @nodoc
class __$$MapEditorBlocStateImplCopyWithImpl<$Res>
    extends _$MapEditorBlocStateCopyWithImpl<$Res, _$MapEditorBlocStateImpl>
    implements _$$MapEditorBlocStateImplCopyWith<$Res> {
  __$$MapEditorBlocStateImplCopyWithImpl(_$MapEditorBlocStateImpl _value,
      $Res Function(_$MapEditorBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEditing = null,
  }) {
    return _then(_$MapEditorBlocStateImpl(
      isEditing: null == isEditing
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MapEditorBlocStateImpl implements _MapEditorBlocState {
  const _$MapEditorBlocStateImpl({this.isEditing = false});

  @override
  @JsonKey()
  final bool isEditing;

  @override
  String toString() {
    return 'MapEditorBlocState(isEditing: $isEditing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapEditorBlocStateImpl &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isEditing);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MapEditorBlocStateImplCopyWith<_$MapEditorBlocStateImpl> get copyWith =>
      __$$MapEditorBlocStateImplCopyWithImpl<_$MapEditorBlocStateImpl>(
          this, _$identity);
}

abstract class _MapEditorBlocState implements MapEditorBlocState {
  const factory _MapEditorBlocState({final bool isEditing}) =
      _$MapEditorBlocStateImpl;

  @override
  bool get isEditing;
  @override
  @JsonKey(ignore: true)
  _$$MapEditorBlocStateImplCopyWith<_$MapEditorBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
