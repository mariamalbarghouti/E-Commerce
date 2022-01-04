import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_object_failures.freezed.dart';

@freezed
abstract class AddProductValueFailures with _$AddProductValueFailures {
  const factory AddProductValueFailures.enterImage({required String msg}) =
      _EnterImage;
  const factory AddProductValueFailures.enterAValidDescription(
      {required String msg}) = _EnterAValidDescription;
  const factory AddProductValueFailures.enterYourDescription(
      {required String msg}) = _EnterYourDescription;
  const factory AddProductValueFailures.enterAValidPrice({required String msg}) =
      _EnterAValidPrice;
  const factory AddProductValueFailures.enterPrice({required String msg}) =
      _EnterPrice;
}
