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
class _$SignUpServerFailuresTearOff {
  const _$SignUpServerFailuresTearOff();

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

  _WeakPassword weakPassword({String msg = "Weak Password"}) {
    return _WeakPassword(
      msg: msg,
    );
  }

  _ServerError serverError({required String msg}) {
    return _ServerError(
      msg: msg,
    );
  }
}

/// @nodoc
const $SignUpServerFailures = _$SignUpServerFailuresTearOff();

/// @nodoc
mixin _$SignUpServerFailures {
  String get msg => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) emailAlreadyInUse,
    required TResult Function(String msg) invalidEmail,
    required TResult Function(String msg) weakPassword,
    required TResult Function(String msg) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? weakPassword,
    TResult Function(String msg)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? weakPassword,
    TResult Function(String msg)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_ServerError value)? serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpServerFailuresCopyWith<SignUpServerFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpServerFailuresCopyWith<$Res> {
  factory $SignUpServerFailuresCopyWith(SignUpServerFailures value,
          $Res Function(SignUpServerFailures) then) =
      _$SignUpServerFailuresCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class _$SignUpServerFailuresCopyWithImpl<$Res>
    implements $SignUpServerFailuresCopyWith<$Res> {
  _$SignUpServerFailuresCopyWithImpl(this._value, this._then);

  final SignUpServerFailures _value;
  // ignore: unused_field
  final $Res Function(SignUpServerFailures) _then;

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
abstract class _$EmailAlreadyInUseCopyWith<$Res>
    implements $SignUpServerFailuresCopyWith<$Res> {
  factory _$EmailAlreadyInUseCopyWith(
          _EmailAlreadyInUse value, $Res Function(_EmailAlreadyInUse) then) =
      __$EmailAlreadyInUseCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$SignUpServerFailuresCopyWithImpl<$Res>
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
    return 'SignUpServerFailures.emailAlreadyInUse(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'SignUpServerFailures.emailAlreadyInUse'))
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
    required TResult Function(String msg) emailAlreadyInUse,
    required TResult Function(String msg) invalidEmail,
    required TResult Function(String msg) weakPassword,
    required TResult Function(String msg) serverError,
  }) {
    return emailAlreadyInUse(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? weakPassword,
    TResult Function(String msg)? serverError,
  }) {
    return emailAlreadyInUse?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? weakPassword,
    TResult Function(String msg)? serverError,
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
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_ServerError value) serverError,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_ServerError value)? serverError,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class _EmailAlreadyInUse implements SignUpServerFailures {
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
    implements $SignUpServerFailuresCopyWith<$Res> {
  factory _$InvalidEmailCopyWith(
          _InvalidEmail value, $Res Function(_InvalidEmail) then) =
      __$InvalidEmailCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$InvalidEmailCopyWithImpl<$Res>
    extends _$SignUpServerFailuresCopyWithImpl<$Res>
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
    return 'SignUpServerFailures.invalidEmail(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpServerFailures.invalidEmail'))
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
    required TResult Function(String msg) emailAlreadyInUse,
    required TResult Function(String msg) invalidEmail,
    required TResult Function(String msg) weakPassword,
    required TResult Function(String msg) serverError,
  }) {
    return invalidEmail(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? weakPassword,
    TResult Function(String msg)? serverError,
  }) {
    return invalidEmail?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? weakPassword,
    TResult Function(String msg)? serverError,
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
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_ServerError value) serverError,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_ServerError value)? serverError,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail implements SignUpServerFailures {
  const factory _InvalidEmail({String msg}) = _$_InvalidEmail;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvalidEmailCopyWith<_InvalidEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WeakPasswordCopyWith<$Res>
    implements $SignUpServerFailuresCopyWith<$Res> {
  factory _$WeakPasswordCopyWith(
          _WeakPassword value, $Res Function(_WeakPassword) then) =
      __$WeakPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$WeakPasswordCopyWithImpl<$Res>
    extends _$SignUpServerFailuresCopyWithImpl<$Res>
    implements _$WeakPasswordCopyWith<$Res> {
  __$WeakPasswordCopyWithImpl(
      _WeakPassword _value, $Res Function(_WeakPassword) _then)
      : super(_value, (v) => _then(v as _WeakPassword));

  @override
  _WeakPassword get _value => super._value as _WeakPassword;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_WeakPassword(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeakPassword with DiagnosticableTreeMixin implements _WeakPassword {
  const _$_WeakPassword({this.msg = "Weak Password"});

  @JsonKey(defaultValue: "Weak Password")
  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpServerFailures.weakPassword(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpServerFailures.weakPassword'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeakPassword &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$WeakPasswordCopyWith<_WeakPassword> get copyWith =>
      __$WeakPasswordCopyWithImpl<_WeakPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) emailAlreadyInUse,
    required TResult Function(String msg) invalidEmail,
    required TResult Function(String msg) weakPassword,
    required TResult Function(String msg) serverError,
  }) {
    return weakPassword(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? weakPassword,
    TResult Function(String msg)? serverError,
  }) {
    return weakPassword?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? weakPassword,
    TResult Function(String msg)? serverError,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_ServerError value) serverError,
  }) {
    return weakPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_ServerError value)? serverError,
  }) {
    return weakPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (weakPassword != null) {
      return weakPassword(this);
    }
    return orElse();
  }
}

abstract class _WeakPassword implements SignUpServerFailures {
  const factory _WeakPassword({String msg}) = _$_WeakPassword;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeakPasswordCopyWith<_WeakPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res>
    implements $SignUpServerFailuresCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res>
    extends _$SignUpServerFailuresCopyWithImpl<$Res>
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
    return 'SignUpServerFailures.serverError(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpServerFailures.serverError'))
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
    required TResult Function(String msg) emailAlreadyInUse,
    required TResult Function(String msg) invalidEmail,
    required TResult Function(String msg) weakPassword,
    required TResult Function(String msg) serverError,
  }) {
    return serverError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? weakPassword,
    TResult Function(String msg)? serverError,
  }) {
    return serverError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? emailAlreadyInUse,
    TResult Function(String msg)? invalidEmail,
    TResult Function(String msg)? weakPassword,
    TResult Function(String msg)? serverError,
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
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmail value) invalidEmail,
    required TResult Function(_WeakPassword value) weakPassword,
    required TResult Function(_ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_ServerError value)? serverError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmail value)? invalidEmail,
    TResult Function(_WeakPassword value)? weakPassword,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements SignUpServerFailures {
  const factory _ServerError({required String msg}) = _$_ServerError;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServerErrorCopyWith<_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}
