// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'technologies_tree_dialog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TechnologiesTreeDialogDto {
  bool get isSelectionAllowed => throw _privateConstructorUsedError;
  bool get isHintVisible => throw _privateConstructorUsedError;
  VoidCallback? get onCloseIfChanged => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TechnologiesTreeDialogDtoCopyWith<TechnologiesTreeDialogDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechnologiesTreeDialogDtoCopyWith<$Res> {
  factory $TechnologiesTreeDialogDtoCopyWith(TechnologiesTreeDialogDto value,
          $Res Function(TechnologiesTreeDialogDto) then) =
      _$TechnologiesTreeDialogDtoCopyWithImpl<$Res, TechnologiesTreeDialogDto>;
  @useResult
  $Res call(
      {bool isSelectionAllowed,
      bool isHintVisible,
      VoidCallback? onCloseIfChanged});
}

/// @nodoc
class _$TechnologiesTreeDialogDtoCopyWithImpl<$Res,
        $Val extends TechnologiesTreeDialogDto>
    implements $TechnologiesTreeDialogDtoCopyWith<$Res> {
  _$TechnologiesTreeDialogDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelectionAllowed = null,
    Object? isHintVisible = null,
    Object? onCloseIfChanged = freezed,
  }) {
    return _then(_value.copyWith(
      isSelectionAllowed: null == isSelectionAllowed
          ? _value.isSelectionAllowed
          : isSelectionAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      isHintVisible: null == isHintVisible
          ? _value.isHintVisible
          : isHintVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      onCloseIfChanged: freezed == onCloseIfChanged
          ? _value.onCloseIfChanged
          : onCloseIfChanged // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TechnologiesTreeDialogDtoImplCopyWith<$Res>
    implements $TechnologiesTreeDialogDtoCopyWith<$Res> {
  factory _$$TechnologiesTreeDialogDtoImplCopyWith(
          _$TechnologiesTreeDialogDtoImpl value,
          $Res Function(_$TechnologiesTreeDialogDtoImpl) then) =
      __$$TechnologiesTreeDialogDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSelectionAllowed,
      bool isHintVisible,
      VoidCallback? onCloseIfChanged});
}

/// @nodoc
class __$$TechnologiesTreeDialogDtoImplCopyWithImpl<$Res>
    extends _$TechnologiesTreeDialogDtoCopyWithImpl<$Res,
        _$TechnologiesTreeDialogDtoImpl>
    implements _$$TechnologiesTreeDialogDtoImplCopyWith<$Res> {
  __$$TechnologiesTreeDialogDtoImplCopyWithImpl(
      _$TechnologiesTreeDialogDtoImpl _value,
      $Res Function(_$TechnologiesTreeDialogDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelectionAllowed = null,
    Object? isHintVisible = null,
    Object? onCloseIfChanged = freezed,
  }) {
    return _then(_$TechnologiesTreeDialogDtoImpl(
      isSelectionAllowed: null == isSelectionAllowed
          ? _value.isSelectionAllowed
          : isSelectionAllowed // ignore: cast_nullable_to_non_nullable
              as bool,
      isHintVisible: null == isHintVisible
          ? _value.isHintVisible
          : isHintVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      onCloseIfChanged: freezed == onCloseIfChanged
          ? _value.onCloseIfChanged
          : onCloseIfChanged // ignore: cast_nullable_to_non_nullable
              as VoidCallback?,
    ));
  }
}

/// @nodoc

class _$TechnologiesTreeDialogDtoImpl implements _TechnologiesTreeDialogDto {
  const _$TechnologiesTreeDialogDtoImpl(
      {this.isSelectionAllowed = false,
      this.isHintVisible = false,
      this.onCloseIfChanged});

  @override
  @JsonKey()
  final bool isSelectionAllowed;
  @override
  @JsonKey()
  final bool isHintVisible;
  @override
  final VoidCallback? onCloseIfChanged;

  @override
  String toString() {
    return 'TechnologiesTreeDialogDto(isSelectionAllowed: $isSelectionAllowed, isHintVisible: $isHintVisible, onCloseIfChanged: $onCloseIfChanged)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TechnologiesTreeDialogDtoImpl &&
            (identical(other.isSelectionAllowed, isSelectionAllowed) ||
                other.isSelectionAllowed == isSelectionAllowed) &&
            (identical(other.isHintVisible, isHintVisible) ||
                other.isHintVisible == isHintVisible) &&
            (identical(other.onCloseIfChanged, onCloseIfChanged) ||
                other.onCloseIfChanged == onCloseIfChanged));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isSelectionAllowed, isHintVisible, onCloseIfChanged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TechnologiesTreeDialogDtoImplCopyWith<_$TechnologiesTreeDialogDtoImpl>
      get copyWith => __$$TechnologiesTreeDialogDtoImplCopyWithImpl<
          _$TechnologiesTreeDialogDtoImpl>(this, _$identity);
}

abstract class _TechnologiesTreeDialogDto implements TechnologiesTreeDialogDto {
  const factory _TechnologiesTreeDialogDto(
      {final bool isSelectionAllowed,
      final bool isHintVisible,
      final VoidCallback? onCloseIfChanged}) = _$TechnologiesTreeDialogDtoImpl;

  @override
  bool get isSelectionAllowed;
  @override
  bool get isHintVisible;
  @override
  VoidCallback? get onCloseIfChanged;
  @override
  @JsonKey(ignore: true)
  _$$TechnologiesTreeDialogDtoImplCopyWith<_$TechnologiesTreeDialogDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
