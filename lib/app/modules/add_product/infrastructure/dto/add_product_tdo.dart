import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/description.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/images/list_of_5.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/price.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/title.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:trail/app/modules/add_product/infrastructure/dto/converter/document_refrence_converter.dart';
import 'package:trail/app/modules/add_product/infrastructure/dto/converter/field_value_converter.dart';
import 'package:trail/core/print_logget.dart';

part 'add_product_tdo.freezed.dart';
part 'add_product_tdo.g.dart';

// Product Domain To Object
// which is a data class
// for object go to db
@freezed
abstract class ProductDTO with _$ProductDTO {
  factory ProductDTO({
    @JsonKey(ignore: true) @Default("") String id,
    // DocumentReference<Object?>  uid,
    // @DocumentReferenceConverter() required DocumentReference<Object?> uid,
    // @DocumentReferenceConverter() required  DocumentReference<Map<String, dynamic>> uid,
    required String title,
    // not String Because It's
    // better for db storage
    required num price,
    required String description,
    required List<String> images,
    @FieldValueConverter() required FieldValue time,
    // required List<Asset> pickedImages,
  }) = _ProductDTO;

  // Convert Peoduct to Product DTO
  factory ProductDTO.fromDomain(
      {required Product product, required DocumentReference<Object?> uid}) {
    return ProductDTO(
      // id: product.id,
      // fetchProductsLeft(FireStoreServerFailures.unexpectedError(msg:
      //Error type 'String' is not a subtype of type 'DocumentReference<Object?>'
      //in type cast))
      // uid: uid,
      title: product.title.getOrCrash(),
      price: num.parse(product.price.getOrCrash()),
      description: product.description.getOrCrash(),
      images: product.pickedImages.getOrCrash(),
      time: FieldValue.serverTimestamp(),
    );
  }
  // Fetching Data From DB
  factory ProductDTO.fromFireStore(DocumentSnapshot doc) {
    // coloredPrint(msg: "insode fromFireStore: doc ${(doc.data()).toString()}",color:LogColors.red);
    return ProductDTO.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }

  // from Json
  factory ProductDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductDTOFromJson(json);
}

extension ProductDTOX on ProductDTO {
  Product toDomain() {
    // print("object")
    // coloredPrint(msg: "toDomain: doc ${ProductDTO.fromFireStore(doc)}",color:LogColors.cyan);
    // coloredPrint(msg: msg)
    Product _product=Product(
      id: id,
      // uid: uid,
      title: ProductTitle(title: title),
      price: Price(price: price.toString()),
      description: Description(description: description),
      pickedImages: ListOf5<String>(listOfPickedImages: images),
    );
    coloredPrint(msg: "toDomain: doc ${_product.toString()}",color:LogColors.cyan);
    return _product;
  }
}
