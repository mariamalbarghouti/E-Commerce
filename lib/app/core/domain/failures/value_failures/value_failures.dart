import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class ValueFailures with _$ValueFailures {
  const factory ValueFailures.empty({required String msg}) = _Empty;

}