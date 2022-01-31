import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// TODO: create a core server error
part 'server_failures.freezed.dart';

// Server Errors
@freezed
abstract class AddProductServerFailures with _$AddProductServerFailures {
  const factory AddProductServerFailures.serverError({required String msg}) =
      _ServerError;
  const factory AddProductServerFailures.permissionsDenied(
      {required String msg}) = _PermissionsDenied;
  const factory AddProductServerFailures.unexpectedError(
      {required String msg}) = _UnexpectedError;
}
