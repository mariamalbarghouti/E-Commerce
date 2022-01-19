import 'package:dartz/dartz.dart';
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';

Either<AddProductValueFailures, List<T>> imagePickerValidator<T>({
  required List<T> ImagesList,
  required int maxLength,
}) {
  if(ImagesList.isEmpty){
    return left(const AddProductValueFailures.empty(msg: "Please Pick At Least One Image"));
  }else if(ImagesList.length>=maxLength){
    return left(const AddProductValueFailures.shortLenght(msg: "You Exceeded The Maximum Size"));
  }else{
    return right(ImagesList);
  }
}
