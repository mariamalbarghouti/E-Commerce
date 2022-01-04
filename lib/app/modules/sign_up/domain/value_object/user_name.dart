import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/sign_up/domain/failures/value_failures.dart';
import 'package:trail/app/modules/sign_up/domain/validation/name_validation.dart';
import 'package:trail/core/domain/value_object/value_object.dart';

// User Name
class UserName extends ValueObject<SignUpValueFailures> {
  UserName._(this.value);
  @override
  final Either<SignUpValueFailures, String> value;
  factory UserName({required String name}) {
    return UserName._(nameValidation(name: name));
  }
}
