import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_object_failures.freezed.dart';
@freezed
abstract class PickImageValueFailures with _$PickImageValueFailures {
  const factory PickImageValueFailures.enterImage({required String msg}) =
      _EnterImage;
}
