// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

  _Product call(
      {String? id,
      DocumentReference<Object?>? uid,
      required ProductTitle title,
      required Price price,
      required Description description,
      required ListOf5<dynamic> pickedImages}) {
    return _Product(
      id: id,
      uid: uid,
      title: title,
      price: price,
      description: description,
      pickedImages: pickedImages,
    );
  }
}

/// @nodoc
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  String? get id => throw _privateConstructorUsedError;
  DocumentReference<Object?>? get uid => throw _privateConstructorUsedError;
  ProductTitle get title => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  Description get description => throw _privateConstructorUsedError;
  ListOf5<dynamic> get pickedImages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      DocumentReference<Object?>? uid,
      ProductTitle title,
      Price price,
      Description description,
      ListOf5<dynamic> pickedImages});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? pickedImages = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as ProductTitle,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description,
      pickedImages: pickedImages == freezed
          ? _value.pickedImages
          : pickedImages // ignore: cast_nullable_to_non_nullable
              as ListOf5<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      DocumentReference<Object?>? uid,
      ProductTitle title,
      Price price,
      Description description,
      ListOf5<dynamic> pickedImages});
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object? id = freezed,
    Object? uid = freezed,
    Object? title = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? pickedImages = freezed,
  }) {
    return _then(_Product(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as ProductTitle,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description,
      pickedImages: pickedImages == freezed
          ? _value.pickedImages
          : pickedImages // ignore: cast_nullable_to_non_nullable
              as ListOf5<dynamic>,
    ));
  }
}

/// @nodoc

class _$_Product extends _Product {
  const _$_Product(
      {this.id,
      this.uid,
      required this.title,
      required this.price,
      required this.description,
      required this.pickedImages})
      : super._();

  @override
  final String? id;
  @override
  final DocumentReference<Object?>? uid;
  @override
  final ProductTitle title;
  @override
  final Price price;
  @override
  final Description description;
  @override
  final ListOf5<dynamic> pickedImages;

  @override
  String toString() {
    return 'Product(id: $id, uid: $uid, title: $title, price: $price, description: $description, pickedImages: $pickedImages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Product &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.pickedImages, pickedImages) ||
                const DeepCollectionEquality()
                    .equals(other.pickedImages, pickedImages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(uid) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(pickedImages);

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);
}

abstract class _Product extends Product {
  const factory _Product(
      {String? id,
      DocumentReference<Object?>? uid,
      required ProductTitle title,
      required Price price,
      required Description description,
      required ListOf5<dynamic> pickedImages}) = _$_Product;
  const _Product._() : super._();

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  DocumentReference<Object?>? get uid => throw _privateConstructorUsedError;
  @override
  ProductTitle get title => throw _privateConstructorUsedError;
  @override
  Price get price => throw _privateConstructorUsedError;
  @override
  Description get description => throw _privateConstructorUsedError;
  @override
  ListOf5<dynamic> get pickedImages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
