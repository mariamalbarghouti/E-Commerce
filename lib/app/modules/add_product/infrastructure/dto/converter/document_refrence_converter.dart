import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

// Document Refrence Converter
class DocumentReferenceConverter
    implements
        JsonConverter<DocumentReference<Object?>, DocumentReference<Object?>> {
  const DocumentReferenceConverter();

  @override
  DocumentReference<Object?> fromJson(DocumentReference<Object?> json) {
    return json;
  }

  @override
  DocumentReference<Object?> toJson(DocumentReference<Object?> object) {
    return object;
  }
}
