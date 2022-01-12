import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_object_failures.freezed.dart';

@freezed
abstract class AddProductValueFailures with _$AddProductValueFailures {
  const factory AddProductValueFailures.empty({required String msg}) = _Empty;
  const factory AddProductValueFailures.shortLenght({required String msg}) =
      _ShortLength;
  const factory AddProductValueFailures.invalidPrice({required String msg}) =
      _InvalidPrice;
}
