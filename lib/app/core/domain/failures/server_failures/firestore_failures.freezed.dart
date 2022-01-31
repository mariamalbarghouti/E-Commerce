// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'firestore_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FireStoreServerFailuresTearOff {
  const _$FireStoreServerFailuresTearOff();

  _ServerError serverError({String msg = "Server Error"}) {
    return _ServerError(
      msg: msg,
    );
  }

  _PermissionsDenied permissionsDenied({String msg = "Permission Denied"}) {
    return _PermissionsDenied(
      msg: msg,
    );
  }

  _UnexpectedError unexpectedError({String msg = "Unexpected Error"}) {
    return _UnexpectedError(
      msg: msg,
    );
  }
}

/// @nodoc
const $FireStoreServerFailures = _$FireStoreServerFailuresTearOff();

/// @nodoc
mixin _$FireStoreServerFailures {
  String get msg => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) serverError,
    required TResult Function(String msg) permissionsDenied,
    required TResult Function(String msg) unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PermissionsDenied value) permissionsDenied,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FireStoreServerFailuresCopyWith<FireStoreServerFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FireStoreServerFailuresCopyWith<$Res> {
  factory $FireStoreServerFailuresCopyWith(FireStoreServerFailures value,
          $Res Function(FireStoreServerFailures) then) =
      _$FireStoreServerFailuresCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class _$FireStoreServerFailuresCopyWithImpl<$Res>
    implements $FireStoreServerFailuresCopyWith<$Res> {
  _$FireStoreServerFailuresCopyWithImpl(this._value, this._then);

  final FireStoreServerFailures _value;
  // ignore: unused_field
  final $Res Function(FireStoreServerFailures) _then;

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
abstract class _$ServerErrorCopyWith<$Res>
    implements $FireStoreServerFailuresCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res>
    extends _$FireStoreServerFailuresCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_ServerError(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerError with DiagnosticableTreeMixin implements _ServerError {
  const _$_ServerError({this.msg = "Server Error"});

  @JsonKey(defaultValue: "Server Error")
  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FireStoreServerFailures.serverError(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FireStoreServerFailures.serverError'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServerError &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      __$ServerErrorCopyWithImpl<_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) serverError,
    required TResult Function(String msg) permissionsDenied,
    required TResult Function(String msg) unexpectedError,
  }) {
    return serverError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
  }) {
    return serverError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PermissionsDenied value) permissionsDenied,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements FireStoreServerFailures {
  const factory _ServerError({String msg}) = _$_ServerError;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PermissionsDeniedCopyWith<$Res>
    implements $FireStoreServerFailuresCopyWith<$Res> {
  factory _$PermissionsDeniedCopyWith(
          _PermissionsDenied value, $Res Function(_PermissionsDenied) then) =
      __$PermissionsDeniedCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$PermissionsDeniedCopyWithImpl<$Res>
    extends _$FireStoreServerFailuresCopyWithImpl<$Res>
    implements _$PermissionsDeniedCopyWith<$Res> {
  __$PermissionsDeniedCopyWithImpl(
      _PermissionsDenied _value, $Res Function(_PermissionsDenied) _then)
      : super(_value, (v) => _then(v as _PermissionsDenied));

  @override
  _PermissionsDenied get _value => super._value as _PermissionsDenied;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_PermissionsDenied(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PermissionsDenied
    with DiagnosticableTreeMixin
    implements _PermissionsDenied {
  const _$_PermissionsDenied({this.msg = "Permission Denied"});

  @JsonKey(defaultValue: "Permission Denied")
  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FireStoreServerFailures.permissionsDenied(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FireStoreServerFailures.permissionsDenied'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PermissionsDenied &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$PermissionsDeniedCopyWith<_PermissionsDenied> get copyWith =>
      __$PermissionsDeniedCopyWithImpl<_PermissionsDenied>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) serverError,
    required TResult Function(String msg) permissionsDenied,
    required TResult Function(String msg) unexpectedError,
  }) {
    return permissionsDenied(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
  }) {
    return permissionsDenied?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    required TResult orElse(),
  }) {
    if (permissionsDenied != null) {
      return permissionsDenied(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PermissionsDenied value) permissionsDenied,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return permissionsDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) {
    return permissionsDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (permissionsDenied != null) {
      return permissionsDenied(this);
    }
    return orElse();
  }
}

abstract class _PermissionsDenied implements FireStoreServerFailures {
  const factory _PermissionsDenied({String msg}) = _$_PermissionsDenied;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PermissionsDeniedCopyWith<_PermissionsDenied> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnexpectedErrorCopyWith<$Res>
    implements $FireStoreServerFailuresCopyWith<$Res> {
  factory _$UnexpectedErrorCopyWith(
          _UnexpectedError value, $Res Function(_UnexpectedError) then) =
      __$UnexpectedErrorCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$UnexpectedErrorCopyWithImpl<$Res>
    extends _$FireStoreServerFailuresCopyWithImpl<$Res>
    implements _$UnexpectedErrorCopyWith<$Res> {
  __$UnexpectedErrorCopyWithImpl(
      _UnexpectedError _value, $Res Function(_UnexpectedError) _then)
      : super(_value, (v) => _then(v as _UnexpectedError));

  @override
  _UnexpectedError get _value => super._value as _UnexpectedError;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_UnexpectedError(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnexpectedError
    with DiagnosticableTreeMixin
    implements _UnexpectedError {
  const _$_UnexpectedError({this.msg = "Unexpected Error"});

  @JsonKey(defaultValue: "Unexpected Error")
  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FireStoreServerFailures.unexpectedError(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'FireStoreServerFailures.unexpectedError'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnexpectedError &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$UnexpectedErrorCopyWith<_UnexpectedError> get copyWith =>
      __$UnexpectedErrorCopyWithImpl<_UnexpectedError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) serverError,
    required TResult Function(String msg) permissionsDenied,
    required TResult Function(String msg) unexpectedError,
  }) {
    return unexpectedError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
  }) {
    return unexpectedError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PermissionsDenied value) permissionsDenied,
    required TResult Function(_UnexpectedError value) unexpectedError,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedError implements FireStoreServerFailures {
  const factory _UnexpectedError({String msg}) = _$_UnexpectedError;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UnexpectedErrorCopyWith<_UnexpectedError> get copyWith =>
      throw _privateConstructorUsedError;
}
