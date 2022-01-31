import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_failures.freezed.dart';
// Sign Up Server Failures
@freezed
abstract class SignUpServerFailures with _$SignUpServerFailures {
  const factory SignUpServerFailures.emailAlreadyInUse({@Default("Email Already In Use") String msg}) = _EmailAlreadyInUse;
  const factory SignUpServerFailures.invalidEmail({@Default("Invalid Email") String msg}) = _InvalidEmail;
  const factory SignUpServerFailures.weakPassword({@Default("Weak Password") String msg}) = _WeakPassword;
  const factory SignUpServerFailures.serverError({required String msg})= _ServerError;
}
