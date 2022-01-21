import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_product_tdo.freezed.dart';
part 'add_product_tdo.g.dart';

// Product Domain To Object
// which is a data class
// for object go to db
@freezed
abstract class ProductDTO with _$ProductDTO {
  factory ProductDTO({
    required String title,
    required num price,
    required String description,
    // required List<Asset> pickedImages,
  }) = _ProductDTO;

  factory ProductDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductDTOFromJson(json);
}
