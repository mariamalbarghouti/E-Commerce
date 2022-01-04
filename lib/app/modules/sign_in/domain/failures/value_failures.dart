import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class SignInValueFailures with _$SignInValueFailures {
  const factory SignInValueFailures.enterValidEmail({required String msg}) =
      _EnterValidEmail;
  const factory SignInValueFailures.enterYourEmail({required String msg}) =
      _EnterYourEmail;
  const factory SignInValueFailures.enterYourPassword({required String msg}) =
      _EnterYourPassword;
  const factory SignInValueFailures.enterStrongerPassword(
      {required String msg}) = _EnterStrongerPassword;
}
