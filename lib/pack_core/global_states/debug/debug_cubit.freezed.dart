// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'debug_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DebugCubitState {
  bool get isCameraFollowingPlayer => throw _privateConstructorUsedError;
  bool get isDebugPaneVisible => throw _privateConstructorUsedError;
  bool get isDebugLinesVisible => throw _privateConstructorUsedError;
  bool get isFpsEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DebugCubitStateCopyWith<DebugCubitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DebugCubitStateCopyWith<$Res> {
  factory $DebugCubitStateCopyWith(
          DebugCubitState value, $Res Function(DebugCubitState) then) =
      _$DebugCubitStateCopyWithImpl<$Res, DebugCubitState>;
  @useResult
  $Res call(
      {bool isCameraFollowingPlayer,
      bool isDebugPaneVisible,
      bool isDebugLinesVisible,
      bool isFpsEnabled});
}

/// @nodoc
class _$DebugCubitStateCopyWithImpl<$Res, $Val extends DebugCubitState>
    implements $DebugCubitStateCopyWith<$Res> {
  _$DebugCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCameraFollowingPlayer = null,
    Object? isDebugPaneVisible = null,
    Object? isDebugLinesVisible = null,
    Object? isFpsEnabled = null,
  }) {
    return _then(_value.copyWith(
      isCameraFollowingPlayer: null == isCameraFollowingPlayer
          ? _value.isCameraFollowingPlayer
          : isCameraFollowingPlayer // ignore: cast_nullable_to_non_nullable
              as bool,
      isDebugPaneVisible: null == isDebugPaneVisible
          ? _value.isDebugPaneVisible
          : isDebugPaneVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isDebugLinesVisible: null == isDebugLinesVisible
          ? _value.isDebugLinesVisible
          : isDebugLinesVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isFpsEnabled: null == isFpsEnabled
          ? _value.isFpsEnabled
          : isFpsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DebugCubitStateImplCopyWith<$Res>
    implements $DebugCubitStateCopyWith<$Res> {
  factory _$$DebugCubitStateImplCopyWith(_$DebugCubitStateImpl value,
          $Res Function(_$DebugCubitStateImpl) then) =
      __$$DebugCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isCameraFollowingPlayer,
      bool isDebugPaneVisible,
      bool isDebugLinesVisible,
      bool isFpsEnabled});
}

/// @nodoc
class __$$DebugCubitStateImplCopyWithImpl<$Res>
    extends _$DebugCubitStateCopyWithImpl<$Res, _$DebugCubitStateImpl>
    implements _$$DebugCubitStateImplCopyWith<$Res> {
  __$$DebugCubitStateImplCopyWithImpl(
      _$DebugCubitStateImpl _value, $Res Function(_$DebugCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCameraFollowingPlayer = null,
    Object? isDebugPaneVisible = null,
    Object? isDebugLinesVisible = null,
    Object? isFpsEnabled = null,
  }) {
    return _then(_$DebugCubitStateImpl(
      isCameraFollowingPlayer: null == isCameraFollowingPlayer
          ? _value.isCameraFollowingPlayer
          : isCameraFollowingPlayer // ignore: cast_nullable_to_non_nullable
              as bool,
      isDebugPaneVisible: null == isDebugPaneVisible
          ? _value.isDebugPaneVisible
          : isDebugPaneVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isDebugLinesVisible: null == isDebugLinesVisible
          ? _value.isDebugLinesVisible
          : isDebugLinesVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      isFpsEnabled: null == isFpsEnabled
          ? _value.isFpsEnabled
          : isFpsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DebugCubitStateImpl
    with DiagnosticableTreeMixin
    implements _DebugCubitState {
  const _$DebugCubitStateImpl(
      {this.isCameraFollowingPlayer = true,
      this.isDebugPaneVisible = kDebugMode,
      this.isDebugLinesVisible = false,
      this.isFpsEnabled = false});

  @override
  @JsonKey()
  final bool isCameraFollowingPlayer;
  @override
  @JsonKey()
  final bool isDebugPaneVisible;
  @override
  @JsonKey()
  final bool isDebugLinesVisible;
  @override
  @JsonKey()
  final bool isFpsEnabled;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DebugCubitState(isCameraFollowingPlayer: $isCameraFollowingPlayer, isDebugPaneVisible: $isDebugPaneVisible, isDebugLinesVisible: $isDebugLinesVisible, isFpsEnabled: $isFpsEnabled)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DebugCubitState'))
      ..add(DiagnosticsProperty(
          'isCameraFollowingPlayer', isCameraFollowingPlayer))
      ..add(DiagnosticsProperty('isDebugPaneVisible', isDebugPaneVisible))
      ..add(DiagnosticsProperty('isDebugLinesVisible', isDebugLinesVisible))
      ..add(DiagnosticsProperty('isFpsEnabled', isFpsEnabled));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DebugCubitStateImpl &&
            (identical(
                    other.isCameraFollowingPlayer, isCameraFollowingPlayer) ||
                other.isCameraFollowingPlayer == isCameraFollowingPlayer) &&
            (identical(other.isDebugPaneVisible, isDebugPaneVisible) ||
                other.isDebugPaneVisible == isDebugPaneVisible) &&
            (identical(other.isDebugLinesVisible, isDebugLinesVisible) ||
                other.isDebugLinesVisible == isDebugLinesVisible) &&
            (identical(other.isFpsEnabled, isFpsEnabled) ||
                other.isFpsEnabled == isFpsEnabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isCameraFollowingPlayer,
      isDebugPaneVisible, isDebugLinesVisible, isFpsEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DebugCubitStateImplCopyWith<_$DebugCubitStateImpl> get copyWith =>
      __$$DebugCubitStateImplCopyWithImpl<_$DebugCubitStateImpl>(
          this, _$identity);
}

abstract class _DebugCubitState implements DebugCubitState {
  const factory _DebugCubitState(
      {final bool isCameraFollowingPlayer,
      final bool isDebugPaneVisible,
      final bool isDebugLinesVisible,
      final bool isFpsEnabled}) = _$DebugCubitStateImpl;

  @override
  bool get isCameraFollowingPlayer;
  @override
  bool get isDebugPaneVisible;
  @override
  bool get isDebugLinesVisible;
  @override
  bool get isFpsEnabled;
  @override
  @JsonKey(ignore: true)
  _$$DebugCubitStateImplCopyWith<_$DebugCubitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
