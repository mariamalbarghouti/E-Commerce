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
class _$SignInServerFailuresTearOff {
  const _$SignInServerFailuresTearOff();

  _ServerError serverError({required String msg}) {
    return _ServerError(
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
const $SignInServerFailures = _$SignInServerFailuresTearOff();

/// @nodoc
mixin _$SignInServerFailures {
  String get msg => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) serverError,
    required TResult Function(String msg) invalidEmailOrPassword,
    required TResult Function(String msg) userNotFound,
    required TResult Function(String msg) userDisabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? invalidEmailOrPassword,
    TResult Function(String msg)? userNotFound,
    TResult Function(String msg)? userDisabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? serverError,
    TResult Function(String msg)? invalidEmailOrPassword,
    TResult Function(String msg)? userNotFound,
    TResult Function(String msg)? userDisabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidEmailOrPassword value)
        invalidEmailOrPassword,
    required TResult Function(_UserNotFound value) userNotFound,
    required TResult Function(_UserDisabled value) userDisabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserDisabled value)? userDisabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidEmailOrPassword value)? invalidEmailOrPassword,
    TResult Function(_UserNotFound value)? userNotFound,
    TResult Function(_UserDisabled value)? userDisabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInServerFailuresCopyWith<SignInServerFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInServerFailuresCopyWith<$Res> {
  factory $SignInServerFailuresCopyWith(SignInServerFailures value,
          $Res Function(SignInServerFailures) then) =
      _$SignInServerFailuresCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class _$SignInServerFailuresCopyWithImpl<$Res>
    implements $SignInServerFailuresCopyWith<$Res> {
  _$SignInServerFailuresCopyWithImpl(this._value, this._then);

  final SignInServerFailures _value;
  // ignore: unused_field
  final $Res Function(SignInServerFailures) _then;

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
    implements $SignInServerFailuresCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res>
    extends _$SignInServerFailuresCopyWithImpl<$Res>
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
  const _$_ServerError({required this.msg});

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInServerFailures.serverError(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInServerFailures.serverError'))
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

abstract class _ServerError implements SignInServerFailures {
  const factory _ServerError({required String msg}) = _$_ServerError;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidEmailOrPasswordCopyWith<$Res>
    implements $SignInServerFailuresCopyWith<$Res> {
  factory _$InvalidEmailOrPasswordCopyWith(_InvalidEmailOrPassword value,
          $Res Function(_InvalidEmailOrPassword) then) =
      __$InvalidEmailOrPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$InvalidEmailOrPasswordCopyWithImpl<$Res>
    extends _$SignInServerFailuresCopyWithImpl<$Res>
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
    return 'SignInServerFailures.invalidEmailOrPassword(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInServerFailures.invalidEmailOrPassword'))
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

abstract class _InvalidEmailOrPassword implements SignInServerFailures {
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
    implements $SignInServerFailuresCopyWith<$Res> {
  factory _$UserNotFoundCopyWith(
          _UserNotFound value, $Res Function(_UserNotFound) then) =
      __$UserNotFoundCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$UserNotFoundCopyWithImpl<$Res>
    extends _$SignInServerFailuresCopyWithImpl<$Res>
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
    return 'SignInServerFailures.userNotFound(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInServerFailures.userNotFound'))
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

abstract class _UserNotFound implements SignInServerFailures {
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
    implements $SignInServerFailuresCopyWith<$Res> {
  factory _$UserDisabledCopyWith(
          _UserDisabled value, $Res Function(_UserDisabled) then) =
      __$UserDisabledCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$UserDisabledCopyWithImpl<$Res>
    extends _$SignInServerFailuresCopyWithImpl<$Res>
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
    return 'SignInServerFailures.userDisabled(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInServerFailures.userDisabled'))
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

abstract class _UserDisabled implements SignInServerFailures {
  const factory _UserDisabled({String msg}) = _$_UserDisabled;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDisabledCopyWith<_UserDisabled> get copyWith =>
      throw _privateConstructorUsedError;
}
