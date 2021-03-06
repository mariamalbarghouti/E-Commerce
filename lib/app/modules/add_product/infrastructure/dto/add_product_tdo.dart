import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
// import 'package:timeago/timeago.dart';

import 'package:trail/app/modules/add_product/domain/value_object/components/description.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/list_of_5.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/price.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/title.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:trail/app/modules/add_product/infrastructure/dto/converter/document_refrence_converter.dart';
import 'package:trail/app/modules/add_product/infrastructure/dto/converter/field_value_converter.dart';
import 'package:trail/core/print_logger.dart';

part 'add_product_tdo.freezed.dart';
part 'add_product_tdo.g.dart';

// Product Domain To Object
// which is a data class
// for object go to db
@freezed
abstract class ProductDTO with _$ProductDTO {
  factory ProductDTO({
    @JsonKey(ignore: true) @Default("") String id,
    @DocumentReferenceConverter() required DocumentReference<Object?> uid,
    required String title,
    // not String Because It's
    // better for db storage
    required num price,
    required String description,
    required List<String> images,
    @FieldValueConverter() required Timestamp time,
    // required List<Asset> pickedImages,
  }) = _ProductDTO;

  // Convert Product to Product DTO
  factory ProductDTO.fromDomain({required Product product}) {
    return ProductDTO(
      // id: product.id,
      // fetchProductsLeft(FireStoreServerFailures.unexpectedError(msg:
      // Error type 'String' is not a subtype of type 'DocumentReference<Object?>'
      // in type cast))
      uid: product.uid!,
      title: product.title.getOrCrash(),
      price: num.parse(product.price.getOrCrash()),
      description: product.description.getOrCrash(),
      images: product.pickedImages.getOrCrash(),
      time: Timestamp.now(), 
    );
  }

  // Fetching Data From DB
  factory ProductDTO.fromFireStore(DocumentSnapshot doc) {
    return ProductDTO.fromJson(doc.data() as Map<String, dynamic>).copyWith(
        id: doc.id,);
 }

  // from Json
  factory ProductDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductDTOFromJson(json);
}

extension ProductDTOX on ProductDTO {
  // Timestamp time=time;
  Product toDomain() {
    return Product(
      id: id,
      uid: uid,
      title: ProductTitle(title: title),
      price: Price(price: price.toString()),
      description: Description(description: description),
      pickedImages: ListOf5<String>(listOf5: images),
      time: time.toDate(),
    );
  }
}
