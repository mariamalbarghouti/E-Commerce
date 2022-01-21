import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_failures.freezed.dart';
@freezed
abstract class AddProductServerFailures with _$AddProductServerFailures{
  const factory AddProductServerFailures.serverError()=_ServerError;
}
