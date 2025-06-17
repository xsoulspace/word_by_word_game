// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_profile_creator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PlayerProfileCreatorState {
  String get nameErrorMessage => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;

  /// Create a copy of PlayerProfileCreatorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerProfileCreatorStateCopyWith<PlayerProfileCreatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerProfileCreatorStateCopyWith<$Res> {
  factory $PlayerProfileCreatorStateCopyWith(
    PlayerProfileCreatorState value,
    $Res Function(PlayerProfileCreatorState) then,
  ) = _$PlayerProfileCreatorStateCopyWithImpl<$Res, PlayerProfileCreatorState>;
  @useResult
  $Res call({String nameErrorMessage, Color color});
}

/// @nodoc
class _$PlayerProfileCreatorStateCopyWithImpl<
  $Res,
  $Val extends PlayerProfileCreatorState
>
    implements $PlayerProfileCreatorStateCopyWith<$Res> {
  _$PlayerProfileCreatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerProfileCreatorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? nameErrorMessage = null, Object? color = null}) {
    return _then(
      _value.copyWith(
            nameErrorMessage: null == nameErrorMessage
                ? _value.nameErrorMessage
                : nameErrorMessage // ignore: cast_nullable_to_non_nullable
                      as String,
            color: null == color
                ? _value.color
                : color // ignore: cast_nullable_to_non_nullable
                      as Color,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlayerProfileCreatorStateImplCopyWith<$Res>
    implements $PlayerProfileCreatorStateCopyWith<$Res> {
  factory _$$PlayerProfileCreatorStateImplCopyWith(
    _$PlayerProfileCreatorStateImpl value,
    $Res Function(_$PlayerProfileCreatorStateImpl) then,
  ) = __$$PlayerProfileCreatorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nameErrorMessage, Color color});
}

/// @nodoc
class __$$PlayerProfileCreatorStateImplCopyWithImpl<$Res>
    extends
        _$PlayerProfileCreatorStateCopyWithImpl<
          $Res,
          _$PlayerProfileCreatorStateImpl
        >
    implements _$$PlayerProfileCreatorStateImplCopyWith<$Res> {
  __$$PlayerProfileCreatorStateImplCopyWithImpl(
    _$PlayerProfileCreatorStateImpl _value,
    $Res Function(_$PlayerProfileCreatorStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlayerProfileCreatorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? nameErrorMessage = null, Object? color = null}) {
    return _then(
      _$PlayerProfileCreatorStateImpl(
        nameErrorMessage: null == nameErrorMessage
            ? _value.nameErrorMessage
            : nameErrorMessage // ignore: cast_nullable_to_non_nullable
                  as String,
        color: null == color
            ? _value.color
            : color // ignore: cast_nullable_to_non_nullable
                  as Color,
      ),
    );
  }
}

/// @nodoc

class _$PlayerProfileCreatorStateImpl implements _PlayerProfileCreatorState {
  const _$PlayerProfileCreatorStateImpl({
    this.nameErrorMessage = '',
    this.color = Colors.teal,
  });

  @override
  @JsonKey()
  final String nameErrorMessage;
  @override
  @JsonKey()
  final Color color;

  @override
  String toString() {
    return 'PlayerProfileCreatorState(nameErrorMessage: $nameErrorMessage, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerProfileCreatorStateImpl &&
            (identical(other.nameErrorMessage, nameErrorMessage) ||
                other.nameErrorMessage == nameErrorMessage) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameErrorMessage, color);

  /// Create a copy of PlayerProfileCreatorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerProfileCreatorStateImplCopyWith<_$PlayerProfileCreatorStateImpl>
  get copyWith =>
      __$$PlayerProfileCreatorStateImplCopyWithImpl<
        _$PlayerProfileCreatorStateImpl
      >(this, _$identity);
}

abstract class _PlayerProfileCreatorState implements PlayerProfileCreatorState {
  const factory _PlayerProfileCreatorState({
    final String nameErrorMessage,
    final Color color,
  }) = _$PlayerProfileCreatorStateImpl;

  @override
  String get nameErrorMessage;
  @override
  Color get color;

  /// Create a copy of PlayerProfileCreatorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerProfileCreatorStateImplCopyWith<_$PlayerProfileCreatorStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
