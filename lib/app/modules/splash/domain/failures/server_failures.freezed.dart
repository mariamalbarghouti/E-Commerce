// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'server_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetSignedInUserServerFailureTearOff {
  const _$GetSignedInUserServerFailureTearOff();

  _UserIsSignedOut userIsSignedOut({required String msg}) {
    return _UserIsSignedOut(
      msg: msg,
    );
  }
}

/// @nodoc
const $GetSignedInUserServerFailure = _$GetSignedInUserServerFailureTearOff();

/// @nodoc
mixin _$GetSignedInUserServerFailure {
  String get msg => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) userIsSignedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? userIsSignedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? userIsSignedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserIsSignedOut value) userIsSignedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserIsSignedOut value)? userIsSignedOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserIsSignedOut value)? userIsSignedOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetSignedInUserServerFailureCopyWith<GetSignedInUserServerFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSignedInUserServerFailureCopyWith<$Res> {
  factory $GetSignedInUserServerFailureCopyWith(
          GetSignedInUserServerFailure value,
          $Res Function(GetSignedInUserServerFailure) then) =
      _$GetSignedInUserServerFailureCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class _$GetSignedInUserServerFailureCopyWithImpl<$Res>
    implements $GetSignedInUserServerFailureCopyWith<$Res> {
  _$GetSignedInUserServerFailureCopyWithImpl(this._value, this._then);

  final GetSignedInUserServerFailure _value;
  // ignore: unused_field
  final $Res Function(GetSignedInUserServerFailure) _then;

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
abstract class _$UserIsSignedOutCopyWith<$Res>
    implements $GetSignedInUserServerFailureCopyWith<$Res> {
  factory _$UserIsSignedOutCopyWith(
          _UserIsSignedOut value, $Res Function(_UserIsSignedOut) then) =
      __$UserIsSignedOutCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$UserIsSignedOutCopyWithImpl<$Res>
    extends _$GetSignedInUserServerFailureCopyWithImpl<$Res>
    implements _$UserIsSignedOutCopyWith<$Res> {
  __$UserIsSignedOutCopyWithImpl(
      _UserIsSignedOut _value, $Res Function(_UserIsSignedOut) _then)
      : super(_value, (v) => _then(v as _UserIsSignedOut));

  @override
  _UserIsSignedOut get _value => super._value as _UserIsSignedOut;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_UserIsSignedOut(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserIsSignedOut implements _UserIsSignedOut {
  const _$_UserIsSignedOut({required this.msg});

  @override
  final String msg;

  @override
  String toString() {
    return 'GetSignedInUserServerFailure.userIsSignedOut(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserIsSignedOut &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$UserIsSignedOutCopyWith<_UserIsSignedOut> get copyWith =>
      __$UserIsSignedOutCopyWithImpl<_UserIsSignedOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) userIsSignedOut,
  }) {
    return userIsSignedOut(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? userIsSignedOut,
  }) {
    return userIsSignedOut?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? userIsSignedOut,
    required TResult orElse(),
  }) {
    if (userIsSignedOut != null) {
      return userIsSignedOut(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserIsSignedOut value) userIsSignedOut,
  }) {
    return userIsSignedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserIsSignedOut value)? userIsSignedOut,
  }) {
    return userIsSignedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserIsSignedOut value)? userIsSignedOut,
    required TResult orElse(),
  }) {
    if (userIsSignedOut != null) {
      return userIsSignedOut(this);
    }
    return orElse();
  }
}

abstract class _UserIsSignedOut implements GetSignedInUserServerFailure {
  const factory _UserIsSignedOut({required String msg}) = _$_UserIsSignedOut;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserIsSignedOutCopyWith<_UserIsSignedOut> get copyWith =>
      throw _privateConstructorUsedError;
}
