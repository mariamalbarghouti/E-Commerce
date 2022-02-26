import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_server_failures.freezed.dart';

// Registration Server Failures
@freezed
abstract class RegistrationServerFailures with _$RegistrationServerFailures {
  /// Server Error
  const factory RegistrationServerFailures.serverError(
      {@Default("Server Error") String msg}) = _ServerError;
  /// Permission Denied 
  const factory RegistrationServerFailures.permissionsDenied(
      {@Default("Permission Denied") String msg}) = _PermissionsDenied;
     /// Unexpected Error
  const factory RegistrationServerFailures.unexpectedError(
      {@Default("Unexpected Error") String msg}) = _UnexpectedError;
  /// Email Already In Use For Sign Up
  const factory RegistrationServerFailures.emailAlreadyInUse({@Default("Email Already In Use") String msg}) = _EmailAlreadyInUse;
  /// Invalid Email For Sign Up
  const factory RegistrationServerFailures.invalidEmail({@Default("Invalid Email") String msg}) = _InvalidEmail;
  /// Ivalid Email Or Password For Sign In
  const factory RegistrationServerFailures.invalidEmailOrPassword({@Default("Invalid Email Or Password") String msg})= _InvalidEmailOrPassword;
  /// User Not Found For Sign In
  const factory RegistrationServerFailures.userNotFound({@Default("User Not Found") String msg})= _UserNotFound;
  /// User Disabled For Sign In
  const factory RegistrationServerFailures.userDisabled({@Default("User Disabled") String msg})= _UserDisabled;
}
