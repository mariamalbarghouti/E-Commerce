import 'package:dartz/dartz.dart';
import 'package:trail/core/error/error.dart';

abstract class ValueObject<T,M> {
  Either<T, M> get value;
  getOrCrash(){
    return value.fold((l) => throw UnhandledError(), (r) => r);
  }

  getOrElse( dflt){
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
