// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdPermissions {
  bool get adsAllowed => throw _privateConstructorUsedError;
  bool get pauseGameScreenBannerEnabled => throw _privateConstructorUsedError;
  bool get levelEndScreenBannerEnabled => throw _privateConstructorUsedError;
  bool get onContinueLevelVideoEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdPermissionsCopyWith<AdPermissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdPermissionsCopyWith<$Res> {
  factory $AdPermissionsCopyWith(
          AdPermissions value, $Res Function(AdPermissions) then) =
      _$AdPermissionsCopyWithImpl<$Res, AdPermissions>;
  @useResult
  $Res call(
      {bool adsAllowed,
      bool pauseGameScreenBannerEnabled,
      bool levelEndScreenBannerEnabled,
      bool onContinueLevelVideoEnabled});
}

/// @nodoc
class _$AdPermissionsCopyWithImpl<$Res, $Val extends AdPermissions>
    implements $AdPermissionsCopyWith<$Res> {
  _$AdPermissionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adsAllowed = null,
    Object? pauseGameScreenBannerEnabled = null,
    Object? levelEndScreenBannerEnabled = null,
    Object? onContinueLevelVideoEnabled = null,
  }) {
    return _then(_value.copyWith(
      adsAllowed: null == adsAllowed
          ? _value.adsAllowed
          : adsAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      pauseGameScreenBannerEnabled: null == pauseGameScreenBannerEnabled
          ? _value.pauseGameScreenBannerEnabled
          : pauseGameScreenBannerEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      levelEndScreenBannerEnabled: null == levelEndScreenBannerEnabled
          ? _value.levelEndScreenBannerEnabled
          : levelEndScreenBannerEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      onContinueLevelVideoEnabled: null == onContinueLevelVideoEnabled
          ? _value.onContinueLevelVideoEnabled
          : onContinueLevelVideoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdPermissionsImplCopyWith<$Res>
    implements $AdPermissionsCopyWith<$Res> {
  factory _$$AdPermissionsImplCopyWith(
          _$AdPermissionsImpl value, $Res Function(_$AdPermissionsImpl) then) =
      __$$AdPermissionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool adsAllowed,
      bool pauseGameScreenBannerEnabled,
      bool levelEndScreenBannerEnabled,
      bool onContinueLevelVideoEnabled});
}

/// @nodoc
class __$$AdPermissionsImplCopyWithImpl<$Res>
    extends _$AdPermissionsCopyWithImpl<$Res, _$AdPermissionsImpl>
    implements _$$AdPermissionsImplCopyWith<$Res> {
  __$$AdPermissionsImplCopyWithImpl(
      _$AdPermissionsImpl _value, $Res Function(_$AdPermissionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adsAllowed = null,
    Object? pauseGameScreenBannerEnabled = null,
    Object? levelEndScreenBannerEnabled = null,
    Object? onContinueLevelVideoEnabled = null,
  }) {
    return _then(_$AdPermissionsImpl(
      adsAllowed: null == adsAllowed
          ? _value.adsAllowed
          : adsAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      pauseGameScreenBannerEnabled: null == pauseGameScreenBannerEnabled
          ? _value.pauseGameScreenBannerEnabled
          : pauseGameScreenBannerEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      levelEndScreenBannerEnabled: null == levelEndScreenBannerEnabled
          ? _value.levelEndScreenBannerEnabled
          : levelEndScreenBannerEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      onContinueLevelVideoEnabled: null == onContinueLevelVideoEnabled
          ? _value.onContinueLevelVideoEnabled
          : onContinueLevelVideoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AdPermissionsImpl extends _AdPermissions {
  const _$AdPermissionsImpl(
      {this.adsAllowed = false,
      this.pauseGameScreenBannerEnabled = false,
      this.levelEndScreenBannerEnabled = false,
      this.onContinueLevelVideoEnabled = false})
      : super._();

  @override
  @JsonKey()
  final bool adsAllowed;
  @override
  @JsonKey()
  final bool pauseGameScreenBannerEnabled;
  @override
  @JsonKey()
  final bool levelEndScreenBannerEnabled;
  @override
  @JsonKey()
  final bool onContinueLevelVideoEnabled;

  @override
  String toString() {
    return 'AdPermissions(adsAllowed: $adsAllowed, pauseGameScreenBannerEnabled: $pauseGameScreenBannerEnabled, levelEndScreenBannerEnabled: $levelEndScreenBannerEnabled, onContinueLevelVideoEnabled: $onContinueLevelVideoEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdPermissionsImpl &&
            (identical(other.adsAllowed, adsAllowed) ||
                other.adsAllowed == adsAllowed) &&
            (identical(other.pauseGameScreenBannerEnabled,
                    pauseGameScreenBannerEnabled) ||
                other.pauseGameScreenBannerEnabled ==
                    pauseGameScreenBannerEnabled) &&
            (identical(other.levelEndScreenBannerEnabled,
                    levelEndScreenBannerEnabled) ||
                other.levelEndScreenBannerEnabled ==
                    levelEndScreenBannerEnabled) &&
            (identical(other.onContinueLevelVideoEnabled,
                    onContinueLevelVideoEnabled) ||
                other.onContinueLevelVideoEnabled ==
                    onContinueLevelVideoEnabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      adsAllowed,
      pauseGameScreenBannerEnabled,
      levelEndScreenBannerEnabled,
      onContinueLevelVideoEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdPermissionsImplCopyWith<_$AdPermissionsImpl> get copyWith =>
      __$$AdPermissionsImplCopyWithImpl<_$AdPermissionsImpl>(this, _$identity);
}

abstract class _AdPermissions extends AdPermissions {
  const factory _AdPermissions(
      {final bool adsAllowed,
      final bool pauseGameScreenBannerEnabled,
      final bool levelEndScreenBannerEnabled,
      final bool onContinueLevelVideoEnabled}) = _$AdPermissionsImpl;
  const _AdPermissions._() : super._();

  @override
  bool get adsAllowed;
  @override
  bool get pauseGameScreenBannerEnabled;
  @override
  bool get levelEndScreenBannerEnabled;
  @override
  bool get onContinueLevelVideoEnabled;
  @override
  @JsonKey(ignore: true)
  _$$AdPermissionsImplCopyWith<_$AdPermissionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
