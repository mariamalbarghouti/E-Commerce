import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/description.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/image_picker.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/price.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/title.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';

part 'add_product_tdo.freezed.dart';
part 'add_product_tdo.g.dart';

// Product Domain To Object
// which is a data class
// for object go to db
@freezed
abstract class ProductDTO with _$ProductDTO {
  factory ProductDTO({
    required String title,
    // not String Because It's
    // better for db storage
    required num price,
    required String description,
    // required List<Asset> pickedImages,
  }) = _ProductDTO;

  // Convert Peoduct to Product DTO
  factory ProductDTO.fromDomain({required Product product}) {
    // dynamic x="";
    return ProductDTO(
      title: product.title.getOrCrash(),
      price: num.parse(product.price.getOrCrash()),
      description: product.description.getOrCrash(),
    );
  }
  factory ProductDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductDTOFromJson(json);
}

extension ProductDTOX on ProductDTO {
  Product toDomain() {
    return Product(
      title: ProductTitle(title: title),
      price: Price(price: price.toString()),
      description: Description(description: description),
      //  pickedImages: ListOf5(listOfPickedImages: []),
    );
  }
}