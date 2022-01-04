import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/sign_in/domain/failures/value_failures.dart';
import 'package:trail/core/error/error.dart';

abstract class ValueObject<T> {
  Either<T, String> get value;
  getOrCrash(){
    return value.fold((l) => throw UnhandledError(), (r) => r);
  }

  getOrElse(String Function() dflt){
    return value.getOrElse(dflt);
  }
  
  @override
  String toString() => 'ValueObject(value: $value)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
