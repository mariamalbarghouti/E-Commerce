import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class SignUpValueFailures with _$SignUpValueFailures {
  const factory SignUpValueFailures.emptyName({required String msg}) =
      _EmptyName;
  const factory SignUpValueFailures.enterAValidName({required String msg}) =
      _EnterAValidName;
  const factory SignUpValueFailures.passwordDoesNotMath({required String msg}) =
      _PasswordDoesNotMath;
  const factory SignUpValueFailures.nullUser({required String msg}) = _NullUser;
}
