import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// TODO: create a core server error 
part 'server_failures.freezed.dart';

@freezed
abstract class AddProductServerFailures with _$AddProductServerFailures {
  const factory AddProductServerFailures.serverError() = _ServerError;
  const factory AddProductServerFailures.permissionsDenied() =
      _PermissionsDenied;
  const factory AddProductServerFailures.unexpectedError() = _UnexpectedError;
}
