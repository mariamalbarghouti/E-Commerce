import 'package:dartz/dartz.dart';
 
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';

Either<AddProductValueFailures, Iterable<T>> imagePickerValidator<T>({
  required Iterable<T> imagesList,
  required int maxLength,
}) {
  if(imagesList.isEmpty){
    return left(const AddProductValueFailures.empty(msg: "Please Pick At Least One Image"));
//  TODO
  }else if(imagesList.length>=maxLength){
    return left(const AddProductValueFailures.shortLenght(msg: "You Exceeded The Maximum Size"));
  }else{
    return right(imagesList);
  }
}
