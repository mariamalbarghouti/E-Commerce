import 'package:dartz/dartz.dart';
 
import 'package:trail/app/modules/add_product/domain/failures/value_object_failures.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/image_picker.dart';

Either<AddProductValueFailures, List<T>> imagePickerValidator<T>({
  required List<T> imagesList,
  // required int maxLength,
}) {
  if(imagesList.isEmpty){
    return left(const AddProductValueFailures.empty(msg: "Please Pick At Least One Image"));
//  TODO
  }else if(imagesList.length>=ListOf5.maxLength){
    return left(const AddProductValueFailures.shortLenght(msg: "You Exceeded The Maximum Size"));
  }else{
    return right(imagesList);
  }
}
