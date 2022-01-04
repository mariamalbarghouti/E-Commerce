// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_object_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PickImageValueFailuresTearOff {
  const _$PickImageValueFailuresTearOff();

  _EnterImage enterImage({required String msg}) {
    return _EnterImage(
      msg: msg,
    );
  }
}

/// @nodoc
const $PickImageValueFailures = _$PickImageValueFailuresTearOff();

/// @nodoc
mixin _$PickImageValueFailures {
  String get msg => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) enterImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? enterImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? enterImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterImage value) enterImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EnterImage value)? enterImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterImage value)? enterImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PickImageValueFailuresCopyWith<PickImageValueFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickImageValueFailuresCopyWith<$Res> {
  factory $PickImageValueFailuresCopyWith(PickImageValueFailures value,
          $Res Function(PickImageValueFailures) then) =
      _$PickImageValueFailuresCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class _$PickImageValueFailuresCopyWithImpl<$Res>
    implements $PickImageValueFailuresCopyWith<$Res> {
  _$PickImageValueFailuresCopyWithImpl(this._value, this._then);

  final PickImageValueFailures _value;
  // ignore: unused_field
  final $Res Function(PickImageValueFailures) _then;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_value.copyWith(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EnterImageCopyWith<$Res>
    implements $PickImageValueFailuresCopyWith<$Res> {
  factory _$EnterImageCopyWith(
          _EnterImage value, $Res Function(_EnterImage) then) =
      __$EnterImageCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$EnterImageCopyWithImpl<$Res>
    extends _$PickImageValueFailuresCopyWithImpl<$Res>
    implements _$EnterImageCopyWith<$Res> {
  __$EnterImageCopyWithImpl(
      _EnterImage _value, $Res Function(_EnterImage) _then)
      : super(_value, (v) => _then(v as _EnterImage));

  @override
  _EnterImage get _value => super._value as _EnterImage;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_EnterImage(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EnterImage with DiagnosticableTreeMixin implements _EnterImage {
  const _$_EnterImage({required this.msg});

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PickImageValueFailures.enterImage(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PickImageValueFailures.enterImage'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EnterImage &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$EnterImageCopyWith<_EnterImage> get copyWith =>
      __$EnterImageCopyWithImpl<_EnterImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) enterImage,
  }) {
    return enterImage(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? enterImage,
  }) {
    return enterImage?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? enterImage,
    required TResult orElse(),
  }) {
    if (enterImage != null) {
      return enterImage(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterImage value) enterImage,
  }) {
    return enterImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EnterImage value)? enterImage,
  }) {
    return enterImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterImage value)? enterImage,
    required TResult orElse(),
  }) {
    if (enterImage != null) {
      return enterImage(this);
    }
    return orElse();
  }
}

abstract class _EnterImage implements PickImageValueFailures {
  const factory _EnterImage({required String msg}) = _$_EnterImage;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EnterImageCopyWith<_EnterImage> get copyWith =>
      throw _privateConstructorUsedError;
}
