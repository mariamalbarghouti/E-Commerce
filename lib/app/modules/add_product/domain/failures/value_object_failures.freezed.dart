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
class _$AddProductValueFailuresTearOff {
  const _$AddProductValueFailuresTearOff();

  _Empty empty({required String msg}) {
    return _Empty(
      msg: msg,
    );
  }

  _ExceedingLenth exceedingLenth({required String msg}) {
    return _ExceedingLenth(
      msg: msg,
    );
  }

  _ShortLenth shortLenght({required String msg}) {
    return _ShortLenth(
      msg: msg,
    );
  }

  _InvalidPrice invalidPrice({required String msg}) {
    return _InvalidPrice(
      msg: msg,
    );
  }

  _MultipleLines multipleLines({required String msg}) {
    return _MultipleLines(
      msg: msg,
    );
  }
}

/// @nodoc
const $AddProductValueFailures = _$AddProductValueFailuresTearOff();

/// @nodoc
mixin _$AddProductValueFailures {
  String get msg => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) empty,
    required TResult Function(String msg) exceedingLenth,
    required TResult Function(String msg) shortLenght,
    required TResult Function(String msg) invalidPrice,
    required TResult Function(String msg) multipleLines,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? empty,
    TResult Function(String msg)? exceedingLenth,
    TResult Function(String msg)? shortLenght,
    TResult Function(String msg)? invalidPrice,
    TResult Function(String msg)? multipleLines,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? empty,
    TResult Function(String msg)? exceedingLenth,
    TResult Function(String msg)? shortLenght,
    TResult Function(String msg)? invalidPrice,
    TResult Function(String msg)? multipleLines,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_ExceedingLenth value) exceedingLenth,
    required TResult Function(_ShortLenth value) shortLenght,
    required TResult Function(_InvalidPrice value) invalidPrice,
    required TResult Function(_MultipleLines value) multipleLines,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_ExceedingLenth value)? exceedingLenth,
    TResult Function(_ShortLenth value)? shortLenght,
    TResult Function(_InvalidPrice value)? invalidPrice,
    TResult Function(_MultipleLines value)? multipleLines,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_ExceedingLenth value)? exceedingLenth,
    TResult Function(_ShortLenth value)? shortLenght,
    TResult Function(_InvalidPrice value)? invalidPrice,
    TResult Function(_MultipleLines value)? multipleLines,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddProductValueFailuresCopyWith<AddProductValueFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductValueFailuresCopyWith<$Res> {
  factory $AddProductValueFailuresCopyWith(AddProductValueFailures value,
          $Res Function(AddProductValueFailures) then) =
      _$AddProductValueFailuresCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class _$AddProductValueFailuresCopyWithImpl<$Res>
    implements $AddProductValueFailuresCopyWith<$Res> {
  _$AddProductValueFailuresCopyWithImpl(this._value, this._then);

  final AddProductValueFailures _value;
  // ignore: unused_field
  final $Res Function(AddProductValueFailures) _then;

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
abstract class _$EmptyCopyWith<$Res>
    implements $AddProductValueFailuresCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res>
    extends _$AddProductValueFailuresCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_Empty(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Empty with DiagnosticableTreeMixin implements _Empty {
  const _$_Empty({required this.msg});

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddProductValueFailures.empty(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddProductValueFailures.empty'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Empty &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$EmptyCopyWith<_Empty> get copyWith =>
      __$EmptyCopyWithImpl<_Empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) empty,
    required TResult Function(String msg) exceedingLenth,
    required TResult Function(String msg) shortLenght,
    required TResult Function(String msg) invalidPrice,
    required TResult Function(String msg) multipleLines,
  }) {
    return empty(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? empty,
    TResult Function(String msg)? exceedingLenth,
    TResult Function(String msg)? shortLenght,
    TResult Function(String msg)? invalidPrice,
    TResult Function(String msg)? multipleLines,
  }) {
    return empty?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? empty,
    TResult Function(String msg)? exceedingLenth,
    TResult Function(String msg)? shortLenght,
    TResult Function(String msg)? invalidPrice,
    TResult Function(String msg)? multipleLines,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_ExceedingLenth value) exceedingLenth,
    required TResult Function(_ShortLenth value) shortLenght,
    required TResult Function(_InvalidPrice value) invalidPrice,
    required TResult Function(_MultipleLines value) multipleLines,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_ExceedingLenth value)? exceedingLenth,
    TResult Function(_ShortLenth value)? shortLenght,
    TResult Function(_InvalidPrice value)? invalidPrice,
    TResult Function(_MultipleLines value)? multipleLines,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_ExceedingLenth value)? exceedingLenth,
    TResult Function(_ShortLenth value)? shortLenght,
    TResult Function(_InvalidPrice value)? invalidPrice,
    TResult Function(_MultipleLines value)? multipleLines,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements AddProductValueFailures {
  const factory _Empty({required String msg}) = _$_Empty;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EmptyCopyWith<_Empty> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ExceedingLenthCopyWith<$Res>
    implements $AddProductValueFailuresCopyWith<$Res> {
  factory _$ExceedingLenthCopyWith(
          _ExceedingLenth value, $Res Function(_ExceedingLenth) then) =
      __$ExceedingLenthCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$ExceedingLenthCopyWithImpl<$Res>
    extends _$AddProductValueFailuresCopyWithImpl<$Res>
    implements _$ExceedingLenthCopyWith<$Res> {
  __$ExceedingLenthCopyWithImpl(
      _ExceedingLenth _value, $Res Function(_ExceedingLenth) _then)
      : super(_value, (v) => _then(v as _ExceedingLenth));

  @override
  _ExceedingLenth get _value => super._value as _ExceedingLenth;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_ExceedingLenth(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ExceedingLenth
    with DiagnosticableTreeMixin
    implements _ExceedingLenth {
  const _$_ExceedingLenth({required this.msg});

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddProductValueFailures.exceedingLenth(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AddProductValueFailures.exceedingLenth'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExceedingLenth &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$ExceedingLenthCopyWith<_ExceedingLenth> get copyWith =>
      __$ExceedingLenthCopyWithImpl<_ExceedingLenth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) empty,
    required TResult Function(String msg) exceedingLenth,
    required TResult Function(String msg) shortLenght,
    required TResult Function(String msg) invalidPrice,
    required TResult Function(String msg) multipleLines,
  }) {
    return exceedingLenth(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? empty,
    TResult Function(String msg)? exceedingLenth,
    TResult Function(String msg)? shortLenght,
    TResult Function(String msg)? invalidPrice,
    TResult Function(String msg)? multipleLines,
  }) {
    return exceedingLenth?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? empty,
    TResult Function(String msg)? exceedingLenth,
    TResult Function(String msg)? shortLenght,
    TResult Function(String msg)? invalidPrice,
    TResult Function(String msg)? multipleLines,
    required TResult orElse(),
  }) {
    if (exceedingLenth != null) {
      return exceedingLenth(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_ExceedingLenth value) exceedingLenth,
    required TResult Function(_ShortLenth value) shortLenght,
    required TResult Function(_InvalidPrice value) invalidPrice,
    required TResult Function(_MultipleLines value) multipleLines,
  }) {
    return exceedingLenth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_ExceedingLenth value)? exceedingLenth,
    TResult Function(_ShortLenth value)? shortLenght,
    TResult Function(_InvalidPrice value)? invalidPrice,
    TResult Function(_MultipleLines value)? multipleLines,
  }) {
    return exceedingLenth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_ExceedingLenth value)? exceedingLenth,
    TResult Function(_ShortLenth value)? shortLenght,
    TResult Function(_InvalidPrice value)? invalidPrice,
    TResult Function(_MultipleLines value)? multipleLines,
    required TResult orElse(),
  }) {
    if (exceedingLenth != null) {
      return exceedingLenth(this);
    }
    return orElse();
  }
}

abstract class _ExceedingLenth implements AddProductValueFailures {
  const factory _ExceedingLenth({required String msg}) = _$_ExceedingLenth;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExceedingLenthCopyWith<_ExceedingLenth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShortLenthCopyWith<$Res>
    implements $AddProductValueFailuresCopyWith<$Res> {
  factory _$ShortLenthCopyWith(
          _ShortLenth value, $Res Function(_ShortLenth) then) =
      __$ShortLenthCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$ShortLenthCopyWithImpl<$Res>
    extends _$AddProductValueFailuresCopyWithImpl<$Res>
    implements _$ShortLenthCopyWith<$Res> {
  __$ShortLenthCopyWithImpl(
      _ShortLenth _value, $Res Function(_ShortLenth) _then)
      : super(_value, (v) => _then(v as _ShortLenth));

  @override
  _ShortLenth get _value => super._value as _ShortLenth;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_ShortLenth(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShortLenth with DiagnosticableTreeMixin implements _ShortLenth {
  const _$_ShortLenth({required this.msg});

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddProductValueFailures.shortLenght(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddProductValueFailures.shortLenght'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShortLenth &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$ShortLenthCopyWith<_ShortLenth> get copyWith =>
      __$ShortLenthCopyWithImpl<_ShortLenth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) empty,
    required TResult Function(String msg) exceedingLenth,
    required TResult Function(String msg) shortLenght,
    required TResult Function(String msg) invalidPrice,
    required TResult Function(String msg) multipleLines,
  }) {
    return shortLenght(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? empty,
    TResult Function(String msg)? exceedingLenth,
    TResult Function(String msg)? shortLenght,
    TResult Function(String msg)? invalidPrice,
    TResult Function(String msg)? multipleLines,
  }) {
    return shortLenght?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? empty,
    TResult Function(String msg)? exceedingLenth,
    TResult Function(String msg)? shortLenght,
    TResult Function(String msg)? invalidPrice,
    TResult Function(String msg)? multipleLines,
    required TResult orElse(),
  }) {
    if (shortLenght != null) {
      return shortLenght(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_ExceedingLenth value) exceedingLenth,
    required TResult Function(_ShortLenth value) shortLenght,
    required TResult Function(_InvalidPrice value) invalidPrice,
    required TResult Function(_MultipleLines value) multipleLines,
  }) {
    return shortLenght(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_ExceedingLenth value)? exceedingLenth,
    TResult Function(_ShortLenth value)? shortLenght,
    TResult Function(_InvalidPrice value)? invalidPrice,
    TResult Function(_MultipleLines value)? multipleLines,
  }) {
    return shortLenght?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_ExceedingLenth value)? exceedingLenth,
    TResult Function(_ShortLenth value)? shortLenght,
    TResult Function(_InvalidPrice value)? invalidPrice,
    TResult Function(_MultipleLines value)? multipleLines,
    required TResult orElse(),
  }) {
    if (shortLenght != null) {
      return shortLenght(this);
    }
    return orElse();
  }
}

abstract class _ShortLenth implements AddProductValueFailures {
  const factory _ShortLenth({required String msg}) = _$_ShortLenth;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ShortLenthCopyWith<_ShortLenth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InvalidPriceCopyWith<$Res>
    implements $AddProductValueFailuresCopyWith<$Res> {
  factory _$InvalidPriceCopyWith(
          _InvalidPrice value, $Res Function(_InvalidPrice) then) =
      __$InvalidPriceCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$InvalidPriceCopyWithImpl<$Res>
    extends _$AddProductValueFailuresCopyWithImpl<$Res>
    implements _$InvalidPriceCopyWith<$Res> {
  __$InvalidPriceCopyWithImpl(
      _InvalidPrice _value, $Res Function(_InvalidPrice) _then)
      : super(_value, (v) => _then(v as _InvalidPrice));

  @override
  _InvalidPrice get _value => super._value as _InvalidPrice;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_InvalidPrice(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidPrice with DiagnosticableTreeMixin implements _InvalidPrice {
  const _$_InvalidPrice({required this.msg});

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddProductValueFailures.invalidPrice(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AddProductValueFailures.invalidPrice'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidPrice &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$InvalidPriceCopyWith<_InvalidPrice> get copyWith =>
      __$InvalidPriceCopyWithImpl<_InvalidPrice>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) empty,
    required TResult Function(String msg) exceedingLenth,
    required TResult Function(String msg) shortLenght,
    required TResult Function(String msg) invalidPrice,
    required TResult Function(String msg) multipleLines,
  }) {
    return invalidPrice(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? empty,
    TResult Function(String msg)? exceedingLenth,
    TResult Function(String msg)? shortLenght,
    TResult Function(String msg)? invalidPrice,
    TResult Function(String msg)? multipleLines,
  }) {
    return invalidPrice?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? empty,
    TResult Function(String msg)? exceedingLenth,
    TResult Function(String msg)? shortLenght,
    TResult Function(String msg)? invalidPrice,
    TResult Function(String msg)? multipleLines,
    required TResult orElse(),
  }) {
    if (invalidPrice != null) {
      return invalidPrice(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_ExceedingLenth value) exceedingLenth,
    required TResult Function(_ShortLenth value) shortLenght,
    required TResult Function(_InvalidPrice value) invalidPrice,
    required TResult Function(_MultipleLines value) multipleLines,
  }) {
    return invalidPrice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_ExceedingLenth value)? exceedingLenth,
    TResult Function(_ShortLenth value)? shortLenght,
    TResult Function(_InvalidPrice value)? invalidPrice,
    TResult Function(_MultipleLines value)? multipleLines,
  }) {
    return invalidPrice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_ExceedingLenth value)? exceedingLenth,
    TResult Function(_ShortLenth value)? shortLenght,
    TResult Function(_InvalidPrice value)? invalidPrice,
    TResult Function(_MultipleLines value)? multipleLines,
    required TResult orElse(),
  }) {
    if (invalidPrice != null) {
      return invalidPrice(this);
    }
    return orElse();
  }
}

abstract class _InvalidPrice implements AddProductValueFailures {
  const factory _InvalidPrice({required String msg}) = _$_InvalidPrice;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$InvalidPriceCopyWith<_InvalidPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$MultipleLinesCopyWith<$Res>
    implements $AddProductValueFailuresCopyWith<$Res> {
  factory _$MultipleLinesCopyWith(
          _MultipleLines value, $Res Function(_MultipleLines) then) =
      __$MultipleLinesCopyWithImpl<$Res>;
  @override
  $Res call({String msg});
}

/// @nodoc
class __$MultipleLinesCopyWithImpl<$Res>
    extends _$AddProductValueFailuresCopyWithImpl<$Res>
    implements _$MultipleLinesCopyWith<$Res> {
  __$MultipleLinesCopyWithImpl(
      _MultipleLines _value, $Res Function(_MultipleLines) _then)
      : super(_value, (v) => _then(v as _MultipleLines));

  @override
  _MultipleLines get _value => super._value as _MultipleLines;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(_MultipleLines(
      msg: msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MultipleLines with DiagnosticableTreeMixin implements _MultipleLines {
  const _$_MultipleLines({required this.msg});

  @override
  final String msg;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AddProductValueFailures.multipleLines(msg: $msg)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AddProductValueFailures.multipleLines'))
      ..add(DiagnosticsProperty('msg', msg));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MultipleLines &&
            (identical(other.msg, msg) ||
                const DeepCollectionEquality().equals(other.msg, msg)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(msg);

  @JsonKey(ignore: true)
  @override
  _$MultipleLinesCopyWith<_MultipleLines> get copyWith =>
      __$MultipleLinesCopyWithImpl<_MultipleLines>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) empty,
    required TResult Function(String msg) exceedingLenth,
    required TResult Function(String msg) shortLenght,
    required TResult Function(String msg) invalidPrice,
    required TResult Function(String msg) multipleLines,
  }) {
    return multipleLines(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String msg)? empty,
    TResult Function(String msg)? exceedingLenth,
    TResult Function(String msg)? shortLenght,
    TResult Function(String msg)? invalidPrice,
    TResult Function(String msg)? multipleLines,
  }) {
    return multipleLines?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? empty,
    TResult Function(String msg)? exceedingLenth,
    TResult Function(String msg)? shortLenght,
    TResult Function(String msg)? invalidPrice,
    TResult Function(String msg)? multipleLines,
    required TResult orElse(),
  }) {
    if (multipleLines != null) {
      return multipleLines(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Empty value) empty,
    required TResult Function(_ExceedingLenth value) exceedingLenth,
    required TResult Function(_ShortLenth value) shortLenght,
    required TResult Function(_InvalidPrice value) invalidPrice,
    required TResult Function(_MultipleLines value) multipleLines,
  }) {
    return multipleLines(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_ExceedingLenth value)? exceedingLenth,
    TResult Function(_ShortLenth value)? shortLenght,
    TResult Function(_InvalidPrice value)? invalidPrice,
    TResult Function(_MultipleLines value)? multipleLines,
  }) {
    return multipleLines?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Empty value)? empty,
    TResult Function(_ExceedingLenth value)? exceedingLenth,
    TResult Function(_ShortLenth value)? shortLenght,
    TResult Function(_InvalidPrice value)? invalidPrice,
    TResult Function(_MultipleLines value)? multipleLines,
    required TResult orElse(),
  }) {
    if (multipleLines != null) {
      return multipleLines(this);
    }
    return orElse();
  }
}

abstract class _MultipleLines implements AddProductValueFailures {
  const factory _MultipleLines({required String msg}) = _$_MultipleLines;

  @override
  String get msg => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MultipleLinesCopyWith<_MultipleLines> get copyWith =>
      throw _privateConstructorUsedError;
}
