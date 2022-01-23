import 'package:dartz/dartz.dart';
import 'package:trail/app/core/error/value_failure_error.dart';


abstract class ValueObject<T,M> {
  Either<T, M> get value;
  getOrCrash(){
    return value.fold((l) => throw UnexpectedValueError(failure: l), (r) => r);
  }

  getOrElse(dflt){
    return value.getOrElse(dflt);
  }
  // return right hand side
  getRightValue(value){
    return optionOf(value);
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
