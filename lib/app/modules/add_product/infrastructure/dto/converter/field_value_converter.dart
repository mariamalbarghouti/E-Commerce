// Convert Field Value
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

// Field Value Converter
class FieldValueConverter implements JsonConverter<Timestamp, Object> {
  const FieldValueConverter();

  @override
  Timestamp fromJson(Object json) {
    return Timestamp.now();
  }

  @override
  Object toJson(Timestamp object) {
    return object;
  }
}
