import 'package:dartz/dartz.dart';
import 'package:trail/app/core/domain/value_object/value_object.dart';
import 'package:trail/app/modules/sign_up/domain/failures/value_failures.dart';
import 'package:trail/app/modules/sign_up/domain/validation/name_validation.dart';

// User Name
class UserName extends ValueObject<SignUpValueFailures,String> {
  UserName._(this.value);
  @override
  final Either<SignUpValueFailures, String> value;
  factory UserName({required String name}) {
    return UserName._(nameValidation(name: name));
  }
}
