import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_failures.freezed.dart';

// Server Errors
@freezed
abstract class FireStoreServerFailures with _$FireStoreServerFailures {
  const factory FireStoreServerFailures.serverError({@Default("Server Error") String msg}) =
      _ServerError;
  const factory FireStoreServerFailures.permissionsDenied(
      {@Default("Permission Denied") String msg}) = _PermissionsDenied;
  const factory FireStoreServerFailures.unexpectedError(
      {@Default("Unexpected Error") String msg}) = _UnexpectedError;
}
