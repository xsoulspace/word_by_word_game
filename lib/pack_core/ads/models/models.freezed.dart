// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  bool get onGameOpenEnabled => throw _privateConstructorUsedError;
  bool get pauseGameScreenBannerEnabled => throw _privateConstructorUsedError;
  bool get levelEndScreenBannerEnabled => throw _privateConstructorUsedError;
  bool get onLevelEndEnabled => throw _privateConstructorUsedError;
  bool get onContinueLevelVideoEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdPermissionsCopyWith<AdPermissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdPermissionsCopyWith<$Res> {
  factory $AdPermissionsCopyWith(
          AdPermissions value, $Res Function(AdPermissions) then) =
      _$AdPermissionsCopyWithImpl<$Res>;
  $Res call(
      {bool adsAllowed,
      bool onGameOpenEnabled,
      bool pauseGameScreenBannerEnabled,
      bool levelEndScreenBannerEnabled,
      bool onLevelEndEnabled,
      bool onContinueLevelVideoEnabled});
}

/// @nodoc
class _$AdPermissionsCopyWithImpl<$Res>
    implements $AdPermissionsCopyWith<$Res> {
  _$AdPermissionsCopyWithImpl(this._value, this._then);

  final AdPermissions _value;
  // ignore: unused_field
  final $Res Function(AdPermissions) _then;

  @override
  $Res call({
    Object? adsAllowed = freezed,
    Object? onGameOpenEnabled = freezed,
    Object? pauseGameScreenBannerEnabled = freezed,
    Object? levelEndScreenBannerEnabled = freezed,
    Object? onLevelEndEnabled = freezed,
    Object? onContinueLevelVideoEnabled = freezed,
  }) {
    return _then(_value.copyWith(
      adsAllowed: adsAllowed == freezed
          ? _value.adsAllowed
          : adsAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      onGameOpenEnabled: onGameOpenEnabled == freezed
          ? _value.onGameOpenEnabled
          : onGameOpenEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      pauseGameScreenBannerEnabled: pauseGameScreenBannerEnabled == freezed
          ? _value.pauseGameScreenBannerEnabled
          : pauseGameScreenBannerEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      levelEndScreenBannerEnabled: levelEndScreenBannerEnabled == freezed
          ? _value.levelEndScreenBannerEnabled
          : levelEndScreenBannerEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      onLevelEndEnabled: onLevelEndEnabled == freezed
          ? _value.onLevelEndEnabled
          : onLevelEndEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      onContinueLevelVideoEnabled: onContinueLevelVideoEnabled == freezed
          ? _value.onContinueLevelVideoEnabled
          : onContinueLevelVideoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AdPermissionsCopyWith<$Res>
    implements $AdPermissionsCopyWith<$Res> {
  factory _$$_AdPermissionsCopyWith(
          _$_AdPermissions value, $Res Function(_$_AdPermissions) then) =
      __$$_AdPermissionsCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool adsAllowed,
      bool onGameOpenEnabled,
      bool pauseGameScreenBannerEnabled,
      bool levelEndScreenBannerEnabled,
      bool onLevelEndEnabled,
      bool onContinueLevelVideoEnabled});
}

/// @nodoc
class __$$_AdPermissionsCopyWithImpl<$Res>
    extends _$AdPermissionsCopyWithImpl<$Res>
    implements _$$_AdPermissionsCopyWith<$Res> {
  __$$_AdPermissionsCopyWithImpl(
      _$_AdPermissions _value, $Res Function(_$_AdPermissions) _then)
      : super(_value, (v) => _then(v as _$_AdPermissions));

  @override
  _$_AdPermissions get _value => super._value as _$_AdPermissions;

  @override
  $Res call({
    Object? adsAllowed = freezed,
    Object? onGameOpenEnabled = freezed,
    Object? pauseGameScreenBannerEnabled = freezed,
    Object? levelEndScreenBannerEnabled = freezed,
    Object? onLevelEndEnabled = freezed,
    Object? onContinueLevelVideoEnabled = freezed,
  }) {
    return _then(_$_AdPermissions(
      adsAllowed: adsAllowed == freezed
          ? _value.adsAllowed
          : adsAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      onGameOpenEnabled: onGameOpenEnabled == freezed
          ? _value.onGameOpenEnabled
          : onGameOpenEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      pauseGameScreenBannerEnabled: pauseGameScreenBannerEnabled == freezed
          ? _value.pauseGameScreenBannerEnabled
          : pauseGameScreenBannerEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      levelEndScreenBannerEnabled: levelEndScreenBannerEnabled == freezed
          ? _value.levelEndScreenBannerEnabled
          : levelEndScreenBannerEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      onLevelEndEnabled: onLevelEndEnabled == freezed
          ? _value.onLevelEndEnabled
          : onLevelEndEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      onContinueLevelVideoEnabled: onContinueLevelVideoEnabled == freezed
          ? _value.onContinueLevelVideoEnabled
          : onContinueLevelVideoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AdPermissions extends _AdPermissions {
  const _$_AdPermissions(
      {this.adsAllowed = false,
      this.onGameOpenEnabled = false,
      this.pauseGameScreenBannerEnabled = false,
      this.levelEndScreenBannerEnabled = false,
      this.onLevelEndEnabled = false,
      this.onContinueLevelVideoEnabled = false})
      : super._();

  @override
  @JsonKey()
  final bool adsAllowed;
  @override
  @JsonKey()
  final bool onGameOpenEnabled;
  @override
  @JsonKey()
  final bool pauseGameScreenBannerEnabled;
  @override
  @JsonKey()
  final bool levelEndScreenBannerEnabled;
  @override
  @JsonKey()
  final bool onLevelEndEnabled;
  @override
  @JsonKey()
  final bool onContinueLevelVideoEnabled;

  @override
  String toString() {
    return 'AdPermissions(adsAllowed: $adsAllowed, onGameOpenEnabled: $onGameOpenEnabled, pauseGameScreenBannerEnabled: $pauseGameScreenBannerEnabled, levelEndScreenBannerEnabled: $levelEndScreenBannerEnabled, onLevelEndEnabled: $onLevelEndEnabled, onContinueLevelVideoEnabled: $onContinueLevelVideoEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdPermissions &&
            const DeepCollectionEquality()
                .equals(other.adsAllowed, adsAllowed) &&
            const DeepCollectionEquality()
                .equals(other.onGameOpenEnabled, onGameOpenEnabled) &&
            const DeepCollectionEquality().equals(
                other.pauseGameScreenBannerEnabled,
                pauseGameScreenBannerEnabled) &&
            const DeepCollectionEquality().equals(
                other.levelEndScreenBannerEnabled,
                levelEndScreenBannerEnabled) &&
            const DeepCollectionEquality()
                .equals(other.onLevelEndEnabled, onLevelEndEnabled) &&
            const DeepCollectionEquality().equals(
                other.onContinueLevelVideoEnabled,
                onContinueLevelVideoEnabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(adsAllowed),
      const DeepCollectionEquality().hash(onGameOpenEnabled),
      const DeepCollectionEquality().hash(pauseGameScreenBannerEnabled),
      const DeepCollectionEquality().hash(levelEndScreenBannerEnabled),
      const DeepCollectionEquality().hash(onLevelEndEnabled),
      const DeepCollectionEquality().hash(onContinueLevelVideoEnabled));

  @JsonKey(ignore: true)
  @override
  _$$_AdPermissionsCopyWith<_$_AdPermissions> get copyWith =>
      __$$_AdPermissionsCopyWithImpl<_$_AdPermissions>(this, _$identity);
}

abstract class _AdPermissions extends AdPermissions {
  const factory _AdPermissions(
      {final bool adsAllowed,
      final bool onGameOpenEnabled,
      final bool pauseGameScreenBannerEnabled,
      final bool levelEndScreenBannerEnabled,
      final bool onLevelEndEnabled,
      final bool onContinueLevelVideoEnabled}) = _$_AdPermissions;
  const _AdPermissions._() : super._();

  @override
  bool get adsAllowed;
  @override
  bool get onGameOpenEnabled;
  @override
  bool get pauseGameScreenBannerEnabled;
  @override
  bool get levelEndScreenBannerEnabled;
  @override
  bool get onLevelEndEnabled;
  @override
  bool get onContinueLevelVideoEnabled;
  @override
  @JsonKey(ignore: true)
  _$$_AdPermissionsCopyWith<_$_AdPermissions> get copyWith =>
      throw _privateConstructorUsedError;
}
