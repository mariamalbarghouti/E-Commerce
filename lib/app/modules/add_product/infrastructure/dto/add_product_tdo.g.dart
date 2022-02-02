// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product_tdo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDTO _$$_ProductDTOFromJson(Map<String, dynamic> json) =>
    _$_ProductDTO(
      title: json['title'] as String,
      price: json['price'] as num,
      description: json['description'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      time: const FieldValueConverter().fromJson(json['time'] as Object),
    );

Map<String, dynamic> _$$_ProductDTOToJson(_$_ProductDTO instance) =>
    <String, dynamic>{
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'images': instance.images,
      'time': const FieldValueConverter().toJson(instance.time),
    };
