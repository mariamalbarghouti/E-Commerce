import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/description.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/images/image_picker.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/price.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/title.dart';

import 'components/images/list_of_5.dart';

part 'product.freezed.dart';

@freezed
abstract class Product implements _$Product {
  const Product._();
  const factory Product({
    String? id,
     DocumentReference<Object?>? uid,
    required ProductTitle title,
    required Price price,
    required Description description,
    required ListOf5 pickedImages,
  }) = _Product;

  factory Product.empty() {
    return Product(
      title: ProductTitle(title: ""),
      price: Price(price: ""),
      description: Description(description: ""),
      pickedImages: ListOf5(listOfPickedImages: []),
    );
  }
}

extension XProduct on Product {
  Option<AddProductValueFailures> get failureOption {
    return title.value
        .andThen(price.value)
        .andThen(description.value)
        .andThen(pickedImages.value)
        .fold((l) => some(l), (r) => none());
  }
}
