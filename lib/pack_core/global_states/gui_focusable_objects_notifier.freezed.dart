// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gui_focusable_objects_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GuiFocusableObjectsNotifierState {
  bool get isChoosing => throw _privateConstructorUsedError;

  /// should have order:
  /// farthest | nearest in center | farthest
  ///
  /// Maybe it would be good to show some distance?
  List<Gid> get nearestObjectIds => throw _privateConstructorUsedError;
  bool get isNearestObjectsLoaded => throw _privateConstructorUsedError;

  /// {@macro focusedObjectId}
  Gid get focusedObjectId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuiFocusableObjectsNotifierStateCopyWith<GuiFocusableObjectsNotifierState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuiFocusableObjectsNotifierStateCopyWith<$Res> {
  factory $GuiFocusableObjectsNotifierStateCopyWith(
          GuiFocusableObjectsNotifierState value,
          $Res Function(GuiFocusableObjectsNotifierState) then) =
      _$GuiFocusableObjectsNotifierStateCopyWithImpl<$Res,
          GuiFocusableObjectsNotifierState>;
  @useResult
  $Res call(
      {bool isChoosing,
      List<Gid> nearestObjectIds,
      bool isNearestObjectsLoaded,
      Gid focusedObjectId});

  $GidCopyWith<$Res> get focusedObjectId;
}

/// @nodoc
class _$GuiFocusableObjectsNotifierStateCopyWithImpl<$Res,
        $Val extends GuiFocusableObjectsNotifierState>
    implements $GuiFocusableObjectsNotifierStateCopyWith<$Res> {
  _$GuiFocusableObjectsNotifierStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isChoosing = null,
    Object? nearestObjectIds = null,
    Object? isNearestObjectsLoaded = null,
    Object? focusedObjectId = null,
  }) {
    return _then(_value.copyWith(
      isChoosing: null == isChoosing
          ? _value.isChoosing
          : isChoosing // ignore: cast_nullable_to_non_nullable
              as bool,
      nearestObjectIds: null == nearestObjectIds
          ? _value.nearestObjectIds
          : nearestObjectIds // ignore: cast_nullable_to_non_nullable
              as List<Gid>,
      isNearestObjectsLoaded: null == isNearestObjectsLoaded
          ? _value.isNearestObjectsLoaded
          : isNearestObjectsLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      focusedObjectId: null == focusedObjectId
          ? _value.focusedObjectId
          : focusedObjectId // ignore: cast_nullable_to_non_nullable
              as Gid,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GidCopyWith<$Res> get focusedObjectId {
    return $GidCopyWith<$Res>(_value.focusedObjectId, (value) {
      return _then(_value.copyWith(focusedObjectId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GuiFcoNotifierStateImplCopyWith<$Res>
    implements $GuiFocusableObjectsNotifierStateCopyWith<$Res> {
  factory _$$GuiFcoNotifierStateImplCopyWith(_$GuiFcoNotifierStateImpl value,
          $Res Function(_$GuiFcoNotifierStateImpl) then) =
      __$$GuiFcoNotifierStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isChoosing,
      List<Gid> nearestObjectIds,
      bool isNearestObjectsLoaded,
      Gid focusedObjectId});

  @override
  $GidCopyWith<$Res> get focusedObjectId;
}

/// @nodoc
class __$$GuiFcoNotifierStateImplCopyWithImpl<$Res>
    extends _$GuiFocusableObjectsNotifierStateCopyWithImpl<$Res,
        _$GuiFcoNotifierStateImpl>
    implements _$$GuiFcoNotifierStateImplCopyWith<$Res> {
  __$$GuiFcoNotifierStateImplCopyWithImpl(_$GuiFcoNotifierStateImpl _value,
      $Res Function(_$GuiFcoNotifierStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isChoosing = null,
    Object? nearestObjectIds = null,
    Object? isNearestObjectsLoaded = null,
    Object? focusedObjectId = null,
  }) {
    return _then(_$GuiFcoNotifierStateImpl(
      isChoosing: null == isChoosing
          ? _value.isChoosing
          : isChoosing // ignore: cast_nullable_to_non_nullable
              as bool,
      nearestObjectIds: null == nearestObjectIds
          ? _value._nearestObjectIds
          : nearestObjectIds // ignore: cast_nullable_to_non_nullable
              as List<Gid>,
      isNearestObjectsLoaded: null == isNearestObjectsLoaded
          ? _value.isNearestObjectsLoaded
          : isNearestObjectsLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      focusedObjectId: null == focusedObjectId
          ? _value.focusedObjectId
          : focusedObjectId // ignore: cast_nullable_to_non_nullable
              as Gid,
    ));
  }
}

/// @nodoc

class _$GuiFcoNotifierStateImpl implements _GuiFcoNotifierState {
  const _$GuiFcoNotifierStateImpl(
      {this.isChoosing = false,
      final List<Gid> nearestObjectIds = const [],
      this.isNearestObjectsLoaded = false,
      this.focusedObjectId = Gid.empty})
      : _nearestObjectIds = nearestObjectIds;

  @override
  @JsonKey()
  final bool isChoosing;

  /// should have order:
  /// farthest | nearest in center | farthest
  ///
  /// Maybe it would be good to show some distance?
  final List<Gid> _nearestObjectIds;

  /// should have order:
  /// farthest | nearest in center | farthest
  ///
  /// Maybe it would be good to show some distance?
  @override
  @JsonKey()
  List<Gid> get nearestObjectIds {
    if (_nearestObjectIds is EqualUnmodifiableListView)
      return _nearestObjectIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nearestObjectIds);
  }

  @override
  @JsonKey()
  final bool isNearestObjectsLoaded;

  /// {@macro focusedObjectId}
  @override
  @JsonKey()
  final Gid focusedObjectId;

  @override
  String toString() {
    return 'GuiFocusableObjectsNotifierState(isChoosing: $isChoosing, nearestObjectIds: $nearestObjectIds, isNearestObjectsLoaded: $isNearestObjectsLoaded, focusedObjectId: $focusedObjectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuiFcoNotifierStateImpl &&
            (identical(other.isChoosing, isChoosing) ||
                other.isChoosing == isChoosing) &&
            const DeepCollectionEquality()
                .equals(other._nearestObjectIds, _nearestObjectIds) &&
            (identical(other.isNearestObjectsLoaded, isNearestObjectsLoaded) ||
                other.isNearestObjectsLoaded == isNearestObjectsLoaded) &&
            (identical(other.focusedObjectId, focusedObjectId) ||
                other.focusedObjectId == focusedObjectId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isChoosing,
      const DeepCollectionEquality().hash(_nearestObjectIds),
      isNearestObjectsLoaded,
      focusedObjectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuiFcoNotifierStateImplCopyWith<_$GuiFcoNotifierStateImpl> get copyWith =>
      __$$GuiFcoNotifierStateImplCopyWithImpl<_$GuiFcoNotifierStateImpl>(
          this, _$identity);
}

abstract class _GuiFcoNotifierState
    implements GuiFocusableObjectsNotifierState {
  const factory _GuiFcoNotifierState(
      {final bool isChoosing,
      final List<Gid> nearestObjectIds,
      final bool isNearestObjectsLoaded,
      final Gid focusedObjectId}) = _$GuiFcoNotifierStateImpl;

  @override
  bool get isChoosing;
  @override

  /// should have order:
  /// farthest | nearest in center | farthest
  ///
  /// Maybe it would be good to show some distance?
  List<Gid> get nearestObjectIds;
  @override
  bool get isNearestObjectsLoaded;
  @override

  /// {@macro focusedObjectId}
  Gid get focusedObjectId;
  @override
  @JsonKey(ignore: true)
  _$$GuiFcoNotifierStateImplCopyWith<_$GuiFcoNotifierStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
