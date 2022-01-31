// Convert Field Value
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

// Field Value Converter
class FieldValueConverter implements JsonConverter<FieldValue, Object> {
  const FieldValueConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue object) {
    return object;
  }
}
