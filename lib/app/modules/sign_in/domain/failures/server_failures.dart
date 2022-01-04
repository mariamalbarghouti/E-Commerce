import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_failures.freezed.dart';
@freezed
abstract class SignInServerFailures with _$SignInServerFailures{
  const factory SignInServerFailures.serverError({required String msg})= _ServerError;
  const factory SignInServerFailures.invalidEmailOrPassword({required String msg})= _InvalidEmailOrPassword;
  const factory SignInServerFailures.userNotFound({required String msg})= _UserNotFound;
  const factory SignInServerFailures.userDisabled({required String msg})= _UserDisabled;
}
