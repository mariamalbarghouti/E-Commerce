import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'curd_server_error.freezed.dart';

// Registration Server Failures
@freezed
abstract class CURDOperationsServerFailures
    with _$CURDOperationsServerFailures {
  /// Server Error
  const factory CURDOperationsServerFailures.serverError(
      {@Default("Server Error") String msg}) = _ServerError;

  /// Permission Denied
  const factory CURDOperationsServerFailures.permissionsDenied(
      {@Default("Permission Denied") String msg}) = _PermissionsDenied;

  /// Unexpected Error
  const factory CURDOperationsServerFailures.unexpectedError(
      {@Default("Unexpected Error") String msg}) = _UnexpectedError;
  /// No More Data If user need to Fetch more
  const factory CURDOperationsServerFailures.noMoreData(
      {@Default("There Is No More Data") String msg}) = _NoMoreData;
}
