import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/description.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/image_picker.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/price.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/title.dart';

part 'product.freezed.dart';
// TODO: make it list of 5
@freezed
abstract class Product implements _$Product {
  const Product._();
  const factory Product({
    String? id,
    required ProductTitle title,
    required Price price,
    required Description description,
    required List<String> pickedImages,
    // required ListOf5<Asset> pickedImages,
  }) = _Product;
  
  Option<AddProductValueFailures> get failureOption {
    return title.value
        .andThen(price.value)
        .andThen(description.value)
        // .andThen(pickedImages.value)
        .fold((l) => some(l), (r) => none());
  }
}
