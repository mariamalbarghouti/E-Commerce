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
class _$SignUpValueFailuresTearOff {
  const _$SignUpValueFailuresTearOff();

  _EmptyName emptyName({required String msg}) {
    return _EmptyName(
      msg: msg,
    );
  }

  _EnterAValidName enterAValidName({required String msg}) {
    return _EnterAValidName(
      msg: msg,
    );
  }

  _PasswordDoesNotMath passwordDoesNotMath({required String msg}) {
    return _PasswordDoesNotMath(
      msg: msg,
    );
  }

  _NullUser nullUser({required String msg}) {
    return _NullUser(
      msg: msg,
    );
  }
}

/// @nodoc
const $SignUpValueFailures = _$SignUpValueFailuresTearOff();

/// @nodoc
mixin _$SignUpValueFailures {
  String get msg => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) emptyName,
    required TResult Function(String msg) enterAValidName,
    required TResult Function(String msg) passwordDoesNotMath,
    required TResult Function(String msg) nullUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? emptyName,
    TResult Function(String msg)? enterAValidName,
    TResult Function(String msg)? passwordDoesNotMath,
    TResult Function(String msg)? nullUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? emptyName,
    TResult Function(String msg)? enterAValidName,
    TResult Function(String msg)? passwordDoesNotMath,
    TResult Function(String msg)? nullUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyName value) emptyName,
    required TResult Function(_EnterAValidName value) enterAValidName,
    required TResult Function(_PasswordDoesNotMath value) passwordDoesNotMath,
    required TResult Function(_NullUser value) nullUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyName value)? emptyName,
    TResult Function(_EnterAValidName value)? enterAValidName,
    TResult Function(_PasswordDoesNotMath value)? passwordDoesNotMath,
    TResult Function(_NullUser value)? nullUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyName value)? emptyName,
    TResult Function(_EnterAValidName value)? enterAValidName,
    TResult Function(_PasswordDoesNotMath value)? passwordDoesNotMath,
    TResult Function(_NullUser value)? nullUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpValueFailuresCopyWith<SignUpValueFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpValueFailuresCopyWith<$Res> {
  factory $SignUpValueFailuresCopyWith(
          SignUpValueFailures value, $Res Function(SignUpValueFailures) then) =
      _$SignUpValueFailuresCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class _$SignUpValueFailuresCopyWithImpl<$Res>
    implements $SignUpValueFailuresCopyWith<$Res> {
  _$SignUpValueFailuresCopyWithImpl(this._value, this._then);

  final SignUpValueFailures _value;
  // ignore: unused_field
  final $Res Function(SignUpValueFailures) _then;

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
abstract class _$EmptyNameCopyWith<$Res>
    implements $SignUpValueFailuresCopyWith<$Res> {
  factory _$EmptyNameCopyWith(
          _EmptyName value, $Res Function(_EmptyName) then) =
      __$EmptyNameCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$EmptyNameCopyWithImpl<$Res>
    extends _$SignUpValueFailuresCopyWithImpl<$Res>
    implements _$EmptyNameCopyWith<$Res> {
  __$EmptyNameCopyWithImpl(_EmptyName _value, $Res Function(_EmptyName) _then)
      : super(_value, (v) => _then(v as _EmptyName));

  @override
  _EmptyName get _value => super._value as _EmptyName;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_EmptyName(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmptyName with DiagnosticableTreeMixin implements _EmptyName {
  const _$_EmptyName({required this.msg});

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpValueFailures.emptyName(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpValueFailures.emptyName'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmptyName &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$EmptyNameCopyWith<_EmptyName> get copyWith =>
      __$EmptyNameCopyWithImpl<_EmptyName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) emptyName,
    required TResult Function(String msg) enterAValidName,
    required TResult Function(String msg) passwordDoesNotMath,
    required TResult Function(String msg) nullUser,
  }) {
    return emptyName(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? emptyName,
    TResult Function(String msg)? enterAValidName,
    TResult Function(String msg)? passwordDoesNotMath,
    TResult Function(String msg)? nullUser,
  }) {
    return emptyName?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? emptyName,
    TResult Function(String msg)? enterAValidName,
    TResult Function(String msg)? passwordDoesNotMath,
    TResult Function(String msg)? nullUser,
    required TResult orElse(),
  }) {
    if (emptyName != null) {
      return emptyName(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyName value) emptyName,
    required TResult Function(_EnterAValidName value) enterAValidName,
    required TResult Function(_PasswordDoesNotMath value) passwordDoesNotMath,
    required TResult Function(_NullUser value) nullUser,
  }) {
    return emptyName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyName value)? emptyName,
    TResult Function(_EnterAValidName value)? enterAValidName,
    TResult Function(_PasswordDoesNotMath value)? passwordDoesNotMath,
    TResult Function(_NullUser value)? nullUser,
  }) {
    return emptyName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyName value)? emptyName,
    TResult Function(_EnterAValidName value)? enterAValidName,
    TResult Function(_PasswordDoesNotMath value)? passwordDoesNotMath,
    TResult Function(_NullUser value)? nullUser,
    required TResult orElse(),
  }) {
    if (emptyName != null) {
      return emptyName(this);
    }
    return orElse();
  }
}

abstract class _EmptyName implements SignUpValueFailures {
  const factory _EmptyName({required String msg}) = _$_EmptyName;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmptyNameCopyWith<_EmptyName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EnterAValidNameCopyWith<$Res>
    implements $SignUpValueFailuresCopyWith<$Res> {
  factory _$EnterAValidNameCopyWith(
          _EnterAValidName value, $Res Function(_EnterAValidName) then) =
      __$EnterAValidNameCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$EnterAValidNameCopyWithImpl<$Res>
    extends _$SignUpValueFailuresCopyWithImpl<$Res>
    implements _$EnterAValidNameCopyWith<$Res> {
  __$EnterAValidNameCopyWithImpl(
      _EnterAValidName _value, $Res Function(_EnterAValidName) _then)
      : super(_value, (v) => _then(v as _EnterAValidName));

  @override
  _EnterAValidName get _value => super._value as _EnterAValidName;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_EnterAValidName(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EnterAValidName
    with DiagnosticableTreeMixin
    implements _EnterAValidName {
  const _$_EnterAValidName({required this.msg});

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpValueFailures.enterAValidName(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpValueFailures.enterAValidName'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EnterAValidName &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$EnterAValidNameCopyWith<_EnterAValidName> get copyWith =>
      __$EnterAValidNameCopyWithImpl<_EnterAValidName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) emptyName,
    required TResult Function(String msg) enterAValidName,
    required TResult Function(String msg) passwordDoesNotMath,
    required TResult Function(String msg) nullUser,
  }) {
    return enterAValidName(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? emptyName,
    TResult Function(String msg)? enterAValidName,
    TResult Function(String msg)? passwordDoesNotMath,
    TResult Function(String msg)? nullUser,
  }) {
    return enterAValidName?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? emptyName,
    TResult Function(String msg)? enterAValidName,
    TResult Function(String msg)? passwordDoesNotMath,
    TResult Function(String msg)? nullUser,
    required TResult orElse(),
  }) {
    if (enterAValidName != null) {
      return enterAValidName(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyName value) emptyName,
    required TResult Function(_EnterAValidName value) enterAValidName,
    required TResult Function(_PasswordDoesNotMath value) passwordDoesNotMath,
    required TResult Function(_NullUser value) nullUser,
  }) {
    return enterAValidName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyName value)? emptyName,
    TResult Function(_EnterAValidName value)? enterAValidName,
    TResult Function(_PasswordDoesNotMath value)? passwordDoesNotMath,
    TResult Function(_NullUser value)? nullUser,
  }) {
    return enterAValidName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyName value)? emptyName,
    TResult Function(_EnterAValidName value)? enterAValidName,
    TResult Function(_PasswordDoesNotMath value)? passwordDoesNotMath,
    TResult Function(_NullUser value)? nullUser,
    required TResult orElse(),
  }) {
    if (enterAValidName != null) {
      return enterAValidName(this);
    }
    return orElse();
  }
}

abstract class _EnterAValidName implements SignUpValueFailures {
  const factory _EnterAValidName({required String msg}) = _$_EnterAValidName;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EnterAValidNameCopyWith<_EnterAValidName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordDoesNotMathCopyWith<$Res>
    implements $SignUpValueFailuresCopyWith<$Res> {
  factory _$PasswordDoesNotMathCopyWith(_PasswordDoesNotMath value,
          $Res Function(_PasswordDoesNotMath) then) =
      __$PasswordDoesNotMathCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$PasswordDoesNotMathCopyWithImpl<$Res>
    extends _$SignUpValueFailuresCopyWithImpl<$Res>
    implements _$PasswordDoesNotMathCopyWith<$Res> {
  __$PasswordDoesNotMathCopyWithImpl(
      _PasswordDoesNotMath _value, $Res Function(_PasswordDoesNotMath) _then)
      : super(_value, (v) => _then(v as _PasswordDoesNotMath));

  @override
  _PasswordDoesNotMath get _value => super._value as _PasswordDoesNotMath;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_PasswordDoesNotMath(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordDoesNotMath
    with DiagnosticableTreeMixin
    implements _PasswordDoesNotMath {
  const _$_PasswordDoesNotMath({required this.msg});

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpValueFailures.passwordDoesNotMath(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignUpValueFailures.passwordDoesNotMath'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordDoesNotMath &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$PasswordDoesNotMathCopyWith<_PasswordDoesNotMath> get copyWith =>
      __$PasswordDoesNotMathCopyWithImpl<_PasswordDoesNotMath>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) emptyName,
    required TResult Function(String msg) enterAValidName,
    required TResult Function(String msg) passwordDoesNotMath,
    required TResult Function(String msg) nullUser,
  }) {
    return passwordDoesNotMath(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? emptyName,
    TResult Function(String msg)? enterAValidName,
    TResult Function(String msg)? passwordDoesNotMath,
    TResult Function(String msg)? nullUser,
  }) {
    return passwordDoesNotMath?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? emptyName,
    TResult Function(String msg)? enterAValidName,
    TResult Function(String msg)? passwordDoesNotMath,
    TResult Function(String msg)? nullUser,
    required TResult orElse(),
  }) {
    if (passwordDoesNotMath != null) {
      return passwordDoesNotMath(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyName value) emptyName,
    required TResult Function(_EnterAValidName value) enterAValidName,
    required TResult Function(_PasswordDoesNotMath value) passwordDoesNotMath,
    required TResult Function(_NullUser value) nullUser,
  }) {
    return passwordDoesNotMath(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyName value)? emptyName,
    TResult Function(_EnterAValidName value)? enterAValidName,
    TResult Function(_PasswordDoesNotMath value)? passwordDoesNotMath,
    TResult Function(_NullUser value)? nullUser,
  }) {
    return passwordDoesNotMath?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyName value)? emptyName,
    TResult Function(_EnterAValidName value)? enterAValidName,
    TResult Function(_PasswordDoesNotMath value)? passwordDoesNotMath,
    TResult Function(_NullUser value)? nullUser,
    required TResult orElse(),
  }) {
    if (passwordDoesNotMath != null) {
      return passwordDoesNotMath(this);
    }
    return orElse();
  }
}

abstract class _PasswordDoesNotMath implements SignUpValueFailures {
  const factory _PasswordDoesNotMath({required String msg}) =
      _$_PasswordDoesNotMath;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PasswordDoesNotMathCopyWith<_PasswordDoesNotMath> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NullUserCopyWith<$Res>
    implements $SignUpValueFailuresCopyWith<$Res> {
  factory _$NullUserCopyWith(_NullUser value, $Res Function(_NullUser) then) =
      __$NullUserCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$NullUserCopyWithImpl<$Res>
    extends _$SignUpValueFailuresCopyWithImpl<$Res>
    implements _$NullUserCopyWith<$Res> {
  __$NullUserCopyWithImpl(_NullUser _value, $Res Function(_NullUser) _then)
      : super(_value, (v) => _then(v as _NullUser));

  @override
  _NullUser get _value => super._value as _NullUser;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_NullUser(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NullUser with DiagnosticableTreeMixin implements _NullUser {
  const _$_NullUser({required this.msg});

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignUpValueFailures.nullUser(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignUpValueFailures.nullUser'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NullUser &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$NullUserCopyWith<_NullUser> get copyWith =>
      __$NullUserCopyWithImpl<_NullUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) emptyName,
    required TResult Function(String msg) enterAValidName,
    required TResult Function(String msg) passwordDoesNotMath,
    required TResult Function(String msg) nullUser,
  }) {
    return nullUser(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? emptyName,
    TResult Function(String msg)? enterAValidName,
    TResult Function(String msg)? passwordDoesNotMath,
    TResult Function(String msg)? nullUser,
  }) {
    return nullUser?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? emptyName,
    TResult Function(String msg)? enterAValidName,
    TResult Function(String msg)? passwordDoesNotMath,
    TResult Function(String msg)? nullUser,
    required TResult orElse(),
  }) {
    if (nullUser != null) {
      return nullUser(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyName value) emptyName,
    required TResult Function(_EnterAValidName value) enterAValidName,
    required TResult Function(_PasswordDoesNotMath value) passwordDoesNotMath,
    required TResult Function(_NullUser value) nullUser,
  }) {
    return nullUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmptyName value)? emptyName,
    TResult Function(_EnterAValidName value)? enterAValidName,
    TResult Function(_PasswordDoesNotMath value)? passwordDoesNotMath,
    TResult Function(_NullUser value)? nullUser,
  }) {
    return nullUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyName value)? emptyName,
    TResult Function(_EnterAValidName value)? enterAValidName,
    TResult Function(_PasswordDoesNotMath value)? passwordDoesNotMath,
    TResult Function(_NullUser value)? nullUser,
    required TResult orElse(),
  }) {
    if (nullUser != null) {
      return nullUser(this);
    }
    return orElse();
  }
}

abstract class _NullUser implements SignUpValueFailures {
  const factory _NullUser({required String msg}) = _$_NullUser;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NullUserCopyWith<_NullUser> get copyWith =>
      throw _privateConstructorUsedError;
}
