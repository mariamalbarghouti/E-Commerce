// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'registration_server_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegistrationServerFailuresTearOff {
  const _$RegistrationServerFailuresTearOff();

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

  _EmailAlreadyInUse emailAlreadyInUse({String msg = "Email Already In Use"}) {
    return _EmailAlreadyInUse(
      msg: msg,
    );
  }

  _InvalidEmail invalidEmail({String msg = "Invalid Email"}) {
    return _InvalidEmail(
      msg: msg,
    );
  }

  _InvalidEmailOrPassword invalidEmailOrPassword(
      {String msg = "Invalid Email Or Password"}) {
    return _InvalidEmailOrPassword(
      msg: msg,
    );
  }

  _UserNotFound userNotFound({String msg = "User Not Found"}) {
    return _UserNotFound(
      msg: msg,
    );
  }

  _UserDisabled userDisabled({String msg = "User Disabled"}) {
    return _UserDisabled(
      msg: msg,
    );
  }
}

/// @nodoc
const $RegistrationServerFailures = _$RegistrationServerFailuresTearOff();

/// @nodoc
mixin _$RegistrationServerFailures {
  String get msg => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) serverError,
    required TResult Function(String msg) permissionsDenied,
    required TResult Function(String msg) unexpectedError,
    required TResult Function(String msg) emailAlreadyInUse,
    required TResult Function(String msg) invalidEmail,
    required TResult Function(String msg) invalidEmailOrPassword,
    required TResult Function(String msg) userNotFound,
    required TResult Function(String msg) userDisabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? invalidEmailOrPassword,
    TResult Function(String msg)? userNotFound,
    TResult Function(String msg)? userDisabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? invalidEmailOrPassword,
    TResult Function(String msg)? userNotFound,
    TResult Function(String msg)? userDisabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PermissionsDenied value) permissionsDenied,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_UserDisabled value) userDisabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserDisabled value)? userDisabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserDisabled value)? userDisabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationServerFailuresCopyWith<RegistrationServerFailures>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationServerFailuresCopyWith<$Res> {
  factory $RegistrationServerFailuresCopyWith(RegistrationServerFailures value,
          $Res Function(RegistrationServerFailures) then) =
      _$RegistrationServerFailuresCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class _$RegistrationServerFailuresCopyWithImpl<$Res>
    implements $RegistrationServerFailuresCopyWith<$Res> {
  _$RegistrationServerFailuresCopyWithImpl(this._value, this._then);

  final RegistrationServerFailures _value;
  // ignore: unused_field
  final $Res Function(RegistrationServerFailures) _then;

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
    implements $RegistrationServerFailuresCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res>
    extends _$RegistrationServerFailuresCopyWithImpl<$Res>
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
    return 'RegistrationServerFailures.serverError(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'RegistrationServerFailures.serverError'))
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
    required TResult Function(String msg) emailAlreadyInUse,
    required TResult Function(String msg) invalidEmail,
    required TResult Function(String msg) invalidEmailOrPassword,
    required TResult Function(String msg) userNotFound,
    required TResult Function(String msg) userDisabled,
  }) {
    return serverError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? invalidEmailOrPassword,
    TResult Function(String msg)? userNotFound,
    TResult Function(String msg)? userDisabled,
  }) {
    return serverError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? invalidEmailOrPassword,
    TResult Function(String msg)? userNotFound,
    TResult Function(String msg)? userDisabled,
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
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_UserDisabled value) userDisabled,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserDisabled value)? userDisabled,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserDisabled value)? userDisabled,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements RegistrationServerFailures {
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
    implements $RegistrationServerFailuresCopyWith<$Res> {
  factory _$PermissionsDeniedCopyWith(
          _PermissionsDenied value, $Res Function(_PermissionsDenied) then) =
      __$PermissionsDeniedCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$PermissionsDeniedCopyWithImpl<$Res>
    extends _$RegistrationServerFailuresCopyWithImpl<$Res>
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
    return 'RegistrationServerFailures.permissionsDenied(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RegistrationServerFailures.permissionsDenied'))
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
    required TResult Function(String msg) emailAlreadyInUse,
    required TResult Function(String msg) invalidEmail,
    required TResult Function(String msg) invalidEmailOrPassword,
    required TResult Function(String msg) userNotFound,
    required TResult Function(String msg) userDisabled,
  }) {
    return permissionsDenied(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? invalidEmailOrPassword,
    TResult Function(String msg)? userNotFound,
    TResult Function(String msg)? userDisabled,
  }) {
    return permissionsDenied?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? invalidEmailOrPassword,
    TResult Function(String msg)? userNotFound,
    TResult Function(String msg)? userDisabled,
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
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_UserDisabled value) userDisabled,
  }) {
    return permissionsDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserDisabled value)? userDisabled,
  }) {
    return permissionsDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserDisabled value)? userDisabled,
    required TResult orElse(),
  }) {
    if (permissionsDenied != null) {
      return permissionsDenied(this);
    }
    return orElse();
  }
}

abstract class _PermissionsDenied implements RegistrationServerFailures {
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
    implements $RegistrationServerFailuresCopyWith<$Res> {
  factory _$UnexpectedErrorCopyWith(
          _UnexpectedError value, $Res Function(_UnexpectedError) then) =
      __$UnexpectedErrorCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$UnexpectedErrorCopyWithImpl<$Res>
    extends _$RegistrationServerFailuresCopyWithImpl<$Res>
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
    return 'RegistrationServerFailures.unexpectedError(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RegistrationServerFailures.unexpectedError'))
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
    required TResult Function(String msg) emailAlreadyInUse,
    required TResult Function(String msg) invalidEmail,
    required TResult Function(String msg) invalidEmailOrPassword,
    required TResult Function(String msg) userNotFound,
    required TResult Function(String msg) userDisabled,
  }) {
    return unexpectedError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? invalidEmailOrPassword,
    TResult Function(String msg)? userNotFound,
    TResult Function(String msg)? userDisabled,
  }) {
    return unexpectedError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? invalidEmailOrPassword,
    TResult Function(String msg)? userNotFound,
    TResult Function(String msg)? userDisabled,
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
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_UserDisabled value) userDisabled,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserDisabled value)? userDisabled,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserDisabled value)? userDisabled,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedError implements RegistrationServerFailures {
  const factory _UnexpectedError({String msg}) = _$_UnexpectedError;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UnexpectedErrorCopyWith<_UnexpectedError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmailAlreadyInUseCopyWith<$Res>
    implements $RegistrationServerFailuresCopyWith<$Res> {
  factory _$EmailAlreadyInUseCopyWith(
          _EmailAlreadyInUse value, $Res Function(_EmailAlreadyInUse) then) =
      __$EmailAlreadyInUseCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$RegistrationServerFailuresCopyWithImpl<$Res>
    implements _$EmailAlreadyInUseCopyWith<$Res> {
  __$EmailAlreadyInUseCopyWithImpl(
      _EmailAlreadyInUse _value, $Res Function(_EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as _EmailAlreadyInUse));

  @override
  _EmailAlreadyInUse get _value => super._value as _EmailAlreadyInUse;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_EmailAlreadyInUse(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailAlreadyInUse
    with DiagnosticableTreeMixin
    implements _EmailAlreadyInUse {
  const _$_EmailAlreadyInUse({this.msg = "Email Already In Use"});

  @JsonKey(defaultValue: "Email Already In Use")
  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegistrationServerFailures.emailAlreadyInUse(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RegistrationServerFailures.emailAlreadyInUse'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailAlreadyInUse &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$EmailAlreadyInUseCopyWith<_EmailAlreadyInUse> get copyWith =>
      __$EmailAlreadyInUseCopyWithImpl<_EmailAlreadyInUse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) serverError,
    required TResult Function(String msg) permissionsDenied,
    required TResult Function(String msg) unexpectedError,
    required TResult Function(String msg) emailAlreadyInUse,
    required TResult Function(String msg) invalidEmail,
    required TResult Function(String msg) invalidEmailOrPassword,
    required TResult Function(String msg) userNotFound,
    required TResult Function(String msg) userDisabled,
  }) {
    return emailAlreadyInUse(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? invalidEmailOrPassword,
    TResult Function(String msg)? userNotFound,
    TResult Function(String msg)? userDisabled,
  }) {
    return emailAlreadyInUse?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? invalidEmailOrPassword,
    TResult Function(String msg)? userNotFound,
    TResult Function(String msg)? userDisabled,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PermissionsDenied value) permissionsDenied,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_UserDisabled value) userDisabled,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserDisabled value)? userDisabled,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserDisabled value)? userDisabled,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class _EmailAlreadyInUse implements RegistrationServerFailures {
  const factory _EmailAlreadyInUse({String msg}) = _$_EmailAlreadyInUse;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmailAlreadyInUseCopyWith<_EmailAlreadyInUse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidEmailCopyWith<$Res>
    implements $RegistrationServerFailuresCopyWith<$Res> {
  factory _$InvalidEmailCopyWith(
          _InvalidEmail value, $Res Function(_InvalidEmail) then) =
      __$InvalidEmailCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$InvalidEmailCopyWithImpl<$Res>
    extends _$RegistrationServerFailuresCopyWithImpl<$Res>
    implements _$InvalidEmailCopyWith<$Res> {
  __$InvalidEmailCopyWithImpl(
      _InvalidEmail _value, $Res Function(_InvalidEmail) _then)
      : super(_value, (v) => _then(v as _InvalidEmail));

  @override
  _InvalidEmail get _value => super._value as _InvalidEmail;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_InvalidEmail(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidEmail with DiagnosticableTreeMixin implements _InvalidEmail {
  const _$_InvalidEmail({this.msg = "Invalid Email"});

  @JsonKey(defaultValue: "Invalid Email")
  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegistrationServerFailures.invalidEmail(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RegistrationServerFailures.invalidEmail'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidEmail &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$InvalidEmailCopyWith<_InvalidEmail> get copyWith =>
      __$InvalidEmailCopyWithImpl<_InvalidEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) serverError,
    required TResult Function(String msg) permissionsDenied,
    required TResult Function(String msg) unexpectedError,
    required TResult Function(String msg) emailAlreadyInUse,
    required TResult Function(String msg) invalidEmail,
    required TResult Function(String msg) invalidEmailOrPassword,
    required TResult Function(String msg) userNotFound,
    required TResult Function(String msg) userDisabled,
  }) {
    return invalidEmail(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? invalidEmailOrPassword,
    TResult Function(String msg)? userNotFound,
    TResult Function(String msg)? userDisabled,
  }) {
    return invalidEmail?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? invalidEmailOrPassword,
    TResult Function(String msg)? userNotFound,
    TResult Function(String msg)? userDisabled,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PermissionsDenied value) permissionsDenied,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_UserDisabled value) userDisabled,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserDisabled value)? userDisabled,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserDisabled value)? userDisabled,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail implements RegistrationServerFailures {
  const factory _InvalidEmail({String msg}) = _$_InvalidEmail;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvalidEmailCopyWith<_InvalidEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidEmailOrPasswordCopyWith<$Res>
    implements $RegistrationServerFailuresCopyWith<$Res> {
  factory _$InvalidEmailOrPasswordCopyWith(_InvalidEmailOrPassword value,
          $Res Function(_InvalidEmailOrPassword) then) =
      __$InvalidEmailOrPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$InvalidEmailOrPasswordCopyWithImpl<$Res>
    extends _$RegistrationServerFailuresCopyWithImpl<$Res>
    implements _$InvalidEmailOrPasswordCopyWith<$Res> {
  __$InvalidEmailOrPasswordCopyWithImpl(_InvalidEmailOrPassword _value,
      $Res Function(_InvalidEmailOrPassword) _then)
      : super(_value, (v) => _then(v as _InvalidEmailOrPassword));

  @override
  _InvalidEmailOrPassword get _value => super._value as _InvalidEmailOrPassword;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_InvalidEmailOrPassword(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidEmailOrPassword
    with DiagnosticableTreeMixin
    implements _InvalidEmailOrPassword {
  const _$_InvalidEmailOrPassword({this.msg = "Invalid Email Or Password"});

  @JsonKey(defaultValue: "Invalid Email Or Password")
  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegistrationServerFailures.invalidEmailOrPassword(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RegistrationServerFailures.invalidEmailOrPassword'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidEmailOrPassword &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$InvalidEmailOrPasswordCopyWith<_InvalidEmailOrPassword> get copyWith =>
      __$InvalidEmailOrPasswordCopyWithImpl<_InvalidEmailOrPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) serverError,
    required TResult Function(String msg) permissionsDenied,
    required TResult Function(String msg) unexpectedError,
    required TResult Function(String msg) emailAlreadyInUse,
    required TResult Function(String msg) invalidEmail,
    required TResult Function(String msg) invalidEmailOrPassword,
    required TResult Function(String msg) userNotFound,
    required TResult Function(String msg) userDisabled,
  }) {
    return invalidEmailOrPassword(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? invalidEmailOrPassword,
    TResult Function(String msg)? userNotFound,
    TResult Function(String msg)? userDisabled,
  }) {
    return invalidEmailOrPassword?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? invalidEmailOrPassword,
    TResult Function(String msg)? userNotFound,
    TResult Function(String msg)? userDisabled,
    required TResult orElse(),
  }) {
    if (invalidEmailOrPassword != null) {
      return invalidEmailOrPassword(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PermissionsDenied value) permissionsDenied,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_UserDisabled value) userDisabled,
  }) {
    return invalidEmailOrPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserDisabled value)? userDisabled,
  }) {
    return invalidEmailOrPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserDisabled value)? userDisabled,
    required TResult orElse(),
  }) {
    if (invalidEmailOrPassword != null) {
      return invalidEmailOrPassword(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmailOrPassword implements RegistrationServerFailures {
  const factory _InvalidEmailOrPassword({String msg}) =
      _$_InvalidEmailOrPassword;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvalidEmailOrPasswordCopyWith<_InvalidEmailOrPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UserNotFoundCopyWith<$Res>
    implements $RegistrationServerFailuresCopyWith<$Res> {
  factory _$UserNotFoundCopyWith(
          _UserNotFound value, $Res Function(_UserNotFound) then) =
      __$UserNotFoundCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$UserNotFoundCopyWithImpl<$Res>
    extends _$RegistrationServerFailuresCopyWithImpl<$Res>
    implements _$UserNotFoundCopyWith<$Res> {
  __$UserNotFoundCopyWithImpl(
      _UserNotFound _value, $Res Function(_UserNotFound) _then)
      : super(_value, (v) => _then(v as _UserNotFound));

  @override
  _UserNotFound get _value => super._value as _UserNotFound;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_UserNotFound(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserNotFound with DiagnosticableTreeMixin implements _UserNotFound {
  const _$_UserNotFound({this.msg = "User Not Found"});

  @JsonKey(defaultValue: "User Not Found")
  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegistrationServerFailures.userNotFound(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RegistrationServerFailures.userNotFound'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserNotFound &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$UserNotFoundCopyWith<_UserNotFound> get copyWith =>
      __$UserNotFoundCopyWithImpl<_UserNotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) serverError,
    required TResult Function(String msg) permissionsDenied,
    required TResult Function(String msg) unexpectedError,
    required TResult Function(String msg) emailAlreadyInUse,
    required TResult Function(String msg) invalidEmail,
    required TResult Function(String msg) invalidEmailOrPassword,
    required TResult Function(String msg) userNotFound,
    required TResult Function(String msg) userDisabled,
  }) {
    return userNotFound(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? invalidEmailOrPassword,
    TResult Function(String msg)? userNotFound,
    TResult Function(String msg)? userDisabled,
  }) {
    return userNotFound?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? invalidEmailOrPassword,
    TResult Function(String msg)? userNotFound,
    TResult Function(String msg)? userDisabled,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PermissionsDenied value) permissionsDenied,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_UserDisabled value) userDisabled,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserDisabled value)? userDisabled,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserDisabled value)? userDisabled,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class _UserNotFound implements RegistrationServerFailures {
  const factory _UserNotFound({String msg}) = _$_UserNotFound;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserNotFoundCopyWith<_UserNotFound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UserDisabledCopyWith<$Res>
    implements $RegistrationServerFailuresCopyWith<$Res> {
  factory _$UserDisabledCopyWith(
          _UserDisabled value, $Res Function(_UserDisabled) then) =
      __$UserDisabledCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$UserDisabledCopyWithImpl<$Res>
    extends _$RegistrationServerFailuresCopyWithImpl<$Res>
    implements _$UserDisabledCopyWith<$Res> {
  __$UserDisabledCopyWithImpl(
      _UserDisabled _value, $Res Function(_UserDisabled) _then)
      : super(_value, (v) => _then(v as _UserDisabled));

  @override
  _UserDisabled get _value => super._value as _UserDisabled;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_UserDisabled(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserDisabled with DiagnosticableTreeMixin implements _UserDisabled {
  const _$_UserDisabled({this.msg = "User Disabled"});

  @JsonKey(defaultValue: "User Disabled")
  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegistrationServerFailures.userDisabled(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'RegistrationServerFailures.userDisabled'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserDisabled &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$UserDisabledCopyWith<_UserDisabled> get copyWith =>
      __$UserDisabledCopyWithImpl<_UserDisabled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) serverError,
    required TResult Function(String msg) permissionsDenied,
    required TResult Function(String msg) unexpectedError,
    required TResult Function(String msg) emailAlreadyInUse,
    required TResult Function(String msg) invalidEmail,
    required TResult Function(String msg) invalidEmailOrPassword,
    required TResult Function(String msg) userNotFound,
    required TResult Function(String msg) userDisabled,
  }) {
    return userDisabled(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? invalidEmailOrPassword,
    TResult Function(String msg)? userNotFound,
    TResult Function(String msg)? userDisabled,
  }) {
    return userDisabled?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? permissionsDenied,
    TResult Function(String msg)? unexpectedError,
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? invalidEmailOrPassword,
    TResult Function(String msg)? userNotFound,
    TResult Function(String msg)? userDisabled,
    required TResult orElse(),
  }) {
    if (userDisabled != null) {
      return userDisabled(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_PermissionsDenied value) permissionsDenied,
    required TResult Function(_UnexpectedError value) unexpectedError,
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_UserDisabled value) userDisabled,
  }) {
    return userDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserDisabled value)? userDisabled,
  }) {
    return userDisabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_PermissionsDenied value)? permissionsDenied,
    TResult Function(_UnexpectedError value)? unexpectedError,
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserDisabled value)? userDisabled,
    required TResult orElse(),
  }) {
    if (userDisabled != null) {
      return userDisabled(this);
    }
    return orElse();
  }
}

abstract class _UserDisabled implements RegistrationServerFailures {
  const factory _UserDisabled({String msg}) = _$_UserDisabled;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDisabledCopyWith<_UserDisabled> get copyWith =>
      throw _privateConstructorUsedError;
}
