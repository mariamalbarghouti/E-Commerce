// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInValueFailuresTearOff {
  const _$SignInValueFailuresTearOff();

  _EnterValidEmail enterValidEmail({required String msg}) {
    return _EnterValidEmail(
      msg: msg,
    );
  }

  _EnterYourEmail enterYourEmail({required String msg}) {
    return _EnterYourEmail(
      msg: msg,
    );
  }

  _EnterYourPassword enterYourPassword({required String msg}) {
    return _EnterYourPassword(
      msg: msg,
    );
  }

  _EnterStrongerPassword enterStrongerPassword({required String msg}) {
    return _EnterStrongerPassword(
      msg: msg,
    );
  }
}

/// @nodoc
const $SignInValueFailures = _$SignInValueFailuresTearOff();

/// @nodoc
mixin _$SignInValueFailures {
  String get msg => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) enterValidEmail,
    required TResult Function(String msg) enterYourEmail,
    required TResult Function(String msg) enterYourPassword,
    required TResult Function(String msg) enterStrongerPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? enterValidEmail,
    TResult Function(String msg)? enterYourEmail,
    TResult Function(String msg)? enterYourPassword,
    TResult Function(String msg)? enterStrongerPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? enterValidEmail,
    TResult Function(String msg)? enterYourEmail,
    TResult Function(String msg)? enterYourPassword,
    TResult Function(String msg)? enterStrongerPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterValidEmail value) enterValidEmail,
    required TResult Function(_EnterYourEmail value) enterYourEmail,
    required TResult Function(_EnterYourPassword value) enterYourPassword,
    required TResult Function(_EnterStrongerPassword value)
        enterStrongerPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EnterValidEmail value)? enterValidEmail,
    TResult Function(_EnterYourEmail value)? enterYourEmail,
    TResult Function(_EnterYourPassword value)? enterYourPassword,
    TResult Function(_EnterStrongerPassword value)? enterStrongerPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterValidEmail value)? enterValidEmail,
    TResult Function(_EnterYourEmail value)? enterYourEmail,
    TResult Function(_EnterYourPassword value)? enterYourPassword,
    TResult Function(_EnterStrongerPassword value)? enterStrongerPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInValueFailuresCopyWith<SignInValueFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInValueFailuresCopyWith<$Res> {
  factory $SignInValueFailuresCopyWith(
          SignInValueFailures value, $Res Function(SignInValueFailures) then) =
      _$SignInValueFailuresCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class _$SignInValueFailuresCopyWithImpl<$Res>
    implements $SignInValueFailuresCopyWith<$Res> {
  _$SignInValueFailuresCopyWithImpl(this._value, this._then);

  final SignInValueFailures _value;
  // ignore: unused_field
  final $Res Function(SignInValueFailures) _then;

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
abstract class _$EnterValidEmailCopyWith<$Res>
    implements $SignInValueFailuresCopyWith<$Res> {
  factory _$EnterValidEmailCopyWith(
          _EnterValidEmail value, $Res Function(_EnterValidEmail) then) =
      __$EnterValidEmailCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$EnterValidEmailCopyWithImpl<$Res>
    extends _$SignInValueFailuresCopyWithImpl<$Res>
    implements _$EnterValidEmailCopyWith<$Res> {
  __$EnterValidEmailCopyWithImpl(
      _EnterValidEmail _value, $Res Function(_EnterValidEmail) _then)
      : super(_value, (v) => _then(v as _EnterValidEmail));

  @override
  _EnterValidEmail get _value => super._value as _EnterValidEmail;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_EnterValidEmail(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EnterValidEmail
    with DiagnosticableTreeMixin
    implements _EnterValidEmail {
  const _$_EnterValidEmail({required this.msg});

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInValueFailures.enterValidEmail(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInValueFailures.enterValidEmail'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EnterValidEmail &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$EnterValidEmailCopyWith<_EnterValidEmail> get copyWith =>
      __$EnterValidEmailCopyWithImpl<_EnterValidEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) enterValidEmail,
    required TResult Function(String msg) enterYourEmail,
    required TResult Function(String msg) enterYourPassword,
    required TResult Function(String msg) enterStrongerPassword,
  }) {
    return enterValidEmail(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? enterValidEmail,
    TResult Function(String msg)? enterYourEmail,
    TResult Function(String msg)? enterYourPassword,
    TResult Function(String msg)? enterStrongerPassword,
  }) {
    return enterValidEmail?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? enterValidEmail,
    TResult Function(String msg)? enterYourEmail,
    TResult Function(String msg)? enterYourPassword,
    TResult Function(String msg)? enterStrongerPassword,
    required TResult orElse(),
  }) {
    if (enterValidEmail != null) {
      return enterValidEmail(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterValidEmail value) enterValidEmail,
    required TResult Function(_EnterYourEmail value) enterYourEmail,
    required TResult Function(_EnterYourPassword value) enterYourPassword,
    required TResult Function(_EnterStrongerPassword value)
        enterStrongerPassword,
  }) {
    return enterValidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EnterValidEmail value)? enterValidEmail,
    TResult Function(_EnterYourEmail value)? enterYourEmail,
    TResult Function(_EnterYourPassword value)? enterYourPassword,
    TResult Function(_EnterStrongerPassword value)? enterStrongerPassword,
  }) {
    return enterValidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterValidEmail value)? enterValidEmail,
    TResult Function(_EnterYourEmail value)? enterYourEmail,
    TResult Function(_EnterYourPassword value)? enterYourPassword,
    TResult Function(_EnterStrongerPassword value)? enterStrongerPassword,
    required TResult orElse(),
  }) {
    if (enterValidEmail != null) {
      return enterValidEmail(this);
    }
    return orElse();
  }
}

abstract class _EnterValidEmail implements SignInValueFailures {
  const factory _EnterValidEmail({required String msg}) = _$_EnterValidEmail;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EnterValidEmailCopyWith<_EnterValidEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EnterYourEmailCopyWith<$Res>
    implements $SignInValueFailuresCopyWith<$Res> {
  factory _$EnterYourEmailCopyWith(
          _EnterYourEmail value, $Res Function(_EnterYourEmail) then) =
      __$EnterYourEmailCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$EnterYourEmailCopyWithImpl<$Res>
    extends _$SignInValueFailuresCopyWithImpl<$Res>
    implements _$EnterYourEmailCopyWith<$Res> {
  __$EnterYourEmailCopyWithImpl(
      _EnterYourEmail _value, $Res Function(_EnterYourEmail) _then)
      : super(_value, (v) => _then(v as _EnterYourEmail));

  @override
  _EnterYourEmail get _value => super._value as _EnterYourEmail;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_EnterYourEmail(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EnterYourEmail
    with DiagnosticableTreeMixin
    implements _EnterYourEmail {
  const _$_EnterYourEmail({required this.msg});

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInValueFailures.enterYourEmail(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInValueFailures.enterYourEmail'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EnterYourEmail &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$EnterYourEmailCopyWith<_EnterYourEmail> get copyWith =>
      __$EnterYourEmailCopyWithImpl<_EnterYourEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) enterValidEmail,
    required TResult Function(String msg) enterYourEmail,
    required TResult Function(String msg) enterYourPassword,
    required TResult Function(String msg) enterStrongerPassword,
  }) {
    return enterYourEmail(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? enterValidEmail,
    TResult Function(String msg)? enterYourEmail,
    TResult Function(String msg)? enterYourPassword,
    TResult Function(String msg)? enterStrongerPassword,
  }) {
    return enterYourEmail?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? enterValidEmail,
    TResult Function(String msg)? enterYourEmail,
    TResult Function(String msg)? enterYourPassword,
    TResult Function(String msg)? enterStrongerPassword,
    required TResult orElse(),
  }) {
    if (enterYourEmail != null) {
      return enterYourEmail(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterValidEmail value) enterValidEmail,
    required TResult Function(_EnterYourEmail value) enterYourEmail,
    required TResult Function(_EnterYourPassword value) enterYourPassword,
    required TResult Function(_EnterStrongerPassword value)
        enterStrongerPassword,
  }) {
    return enterYourEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EnterValidEmail value)? enterValidEmail,
    TResult Function(_EnterYourEmail value)? enterYourEmail,
    TResult Function(_EnterYourPassword value)? enterYourPassword,
    TResult Function(_EnterStrongerPassword value)? enterStrongerPassword,
  }) {
    return enterYourEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterValidEmail value)? enterValidEmail,
    TResult Function(_EnterYourEmail value)? enterYourEmail,
    TResult Function(_EnterYourPassword value)? enterYourPassword,
    TResult Function(_EnterStrongerPassword value)? enterStrongerPassword,
    required TResult orElse(),
  }) {
    if (enterYourEmail != null) {
      return enterYourEmail(this);
    }
    return orElse();
  }
}

abstract class _EnterYourEmail implements SignInValueFailures {
  const factory _EnterYourEmail({required String msg}) = _$_EnterYourEmail;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EnterYourEmailCopyWith<_EnterYourEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EnterYourPasswordCopyWith<$Res>
    implements $SignInValueFailuresCopyWith<$Res> {
  factory _$EnterYourPasswordCopyWith(
          _EnterYourPassword value, $Res Function(_EnterYourPassword) then) =
      __$EnterYourPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$EnterYourPasswordCopyWithImpl<$Res>
    extends _$SignInValueFailuresCopyWithImpl<$Res>
    implements _$EnterYourPasswordCopyWith<$Res> {
  __$EnterYourPasswordCopyWithImpl(
      _EnterYourPassword _value, $Res Function(_EnterYourPassword) _then)
      : super(_value, (v) => _then(v as _EnterYourPassword));

  @override
  _EnterYourPassword get _value => super._value as _EnterYourPassword;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_EnterYourPassword(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EnterYourPassword
    with DiagnosticableTreeMixin
    implements _EnterYourPassword {
  const _$_EnterYourPassword({required this.msg});

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInValueFailures.enterYourPassword(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'SignInValueFailures.enterYourPassword'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EnterYourPassword &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$EnterYourPasswordCopyWith<_EnterYourPassword> get copyWith =>
      __$EnterYourPasswordCopyWithImpl<_EnterYourPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) enterValidEmail,
    required TResult Function(String msg) enterYourEmail,
    required TResult Function(String msg) enterYourPassword,
    required TResult Function(String msg) enterStrongerPassword,
  }) {
    return enterYourPassword(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? enterValidEmail,
    TResult Function(String msg)? enterYourEmail,
    TResult Function(String msg)? enterYourPassword,
    TResult Function(String msg)? enterStrongerPassword,
  }) {
    return enterYourPassword?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? enterValidEmail,
    TResult Function(String msg)? enterYourEmail,
    TResult Function(String msg)? enterYourPassword,
    TResult Function(String msg)? enterStrongerPassword,
    required TResult orElse(),
  }) {
    if (enterYourPassword != null) {
      return enterYourPassword(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterValidEmail value) enterValidEmail,
    required TResult Function(_EnterYourEmail value) enterYourEmail,
    required TResult Function(_EnterYourPassword value) enterYourPassword,
    required TResult Function(_EnterStrongerPassword value)
        enterStrongerPassword,
  }) {
    return enterYourPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EnterValidEmail value)? enterValidEmail,
    TResult Function(_EnterYourEmail value)? enterYourEmail,
    TResult Function(_EnterYourPassword value)? enterYourPassword,
    TResult Function(_EnterStrongerPassword value)? enterStrongerPassword,
  }) {
    return enterYourPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterValidEmail value)? enterValidEmail,
    TResult Function(_EnterYourEmail value)? enterYourEmail,
    TResult Function(_EnterYourPassword value)? enterYourPassword,
    TResult Function(_EnterStrongerPassword value)? enterStrongerPassword,
    required TResult orElse(),
  }) {
    if (enterYourPassword != null) {
      return enterYourPassword(this);
    }
    return orElse();
  }
}

abstract class _EnterYourPassword implements SignInValueFailures {
  const factory _EnterYourPassword({required String msg}) =
      _$_EnterYourPassword;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EnterYourPasswordCopyWith<_EnterYourPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EnterStrongerPasswordCopyWith<$Res>
    implements $SignInValueFailuresCopyWith<$Res> {
  factory _$EnterStrongerPasswordCopyWith(_EnterStrongerPassword value,
          $Res Function(_EnterStrongerPassword) then) =
      __$EnterStrongerPasswordCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$EnterStrongerPasswordCopyWithImpl<$Res>
    extends _$SignInValueFailuresCopyWithImpl<$Res>
    implements _$EnterStrongerPasswordCopyWith<$Res> {
  __$EnterStrongerPasswordCopyWithImpl(_EnterStrongerPassword _value,
      $Res Function(_EnterStrongerPassword) _then)
      : super(_value, (v) => _then(v as _EnterStrongerPassword));

  @override
  _EnterStrongerPassword get _value => super._value as _EnterStrongerPassword;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_EnterStrongerPassword(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EnterStrongerPassword
    with DiagnosticableTreeMixin
    implements _EnterStrongerPassword {
  const _$_EnterStrongerPassword({required this.msg});

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInValueFailures.enterStrongerPassword(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInValueFailures.enterStrongerPassword'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EnterStrongerPassword &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$EnterStrongerPasswordCopyWith<_EnterStrongerPassword> get copyWith =>
      __$EnterStrongerPasswordCopyWithImpl<_EnterStrongerPassword>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) enterValidEmail,
    required TResult Function(String msg) enterYourEmail,
    required TResult Function(String msg) enterYourPassword,
    required TResult Function(String msg) enterStrongerPassword,
  }) {
    return enterStrongerPassword(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? enterValidEmail,
    TResult Function(String msg)? enterYourEmail,
    TResult Function(String msg)? enterYourPassword,
    TResult Function(String msg)? enterStrongerPassword,
  }) {
    return enterStrongerPassword?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? enterValidEmail,
    TResult Function(String msg)? enterYourEmail,
    TResult Function(String msg)? enterYourPassword,
    TResult Function(String msg)? enterStrongerPassword,
    required TResult orElse(),
  }) {
    if (enterStrongerPassword != null) {
      return enterStrongerPassword(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnterValidEmail value) enterValidEmail,
    required TResult Function(_EnterYourEmail value) enterYourEmail,
    required TResult Function(_EnterYourPassword value) enterYourPassword,
    required TResult Function(_EnterStrongerPassword value)
        enterStrongerPassword,
  }) {
    return enterStrongerPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EnterValidEmail value)? enterValidEmail,
    TResult Function(_EnterYourEmail value)? enterYourEmail,
    TResult Function(_EnterYourPassword value)? enterYourPassword,
    TResult Function(_EnterStrongerPassword value)? enterStrongerPassword,
  }) {
    return enterStrongerPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnterValidEmail value)? enterValidEmail,
    TResult Function(_EnterYourEmail value)? enterYourEmail,
    TResult Function(_EnterYourPassword value)? enterYourPassword,
    TResult Function(_EnterStrongerPassword value)? enterStrongerPassword,
    required TResult orElse(),
  }) {
    if (enterStrongerPassword != null) {
      return enterStrongerPassword(this);
    }
    return orElse();
  }
}

abstract class _EnterStrongerPassword implements SignInValueFailures {
  const factory _EnterStrongerPassword({required String msg}) =
      _$_EnterStrongerPassword;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EnterStrongerPasswordCopyWith<_EnterStrongerPassword> get copyWith =>
      throw _privateConstructorUsedError;
}
