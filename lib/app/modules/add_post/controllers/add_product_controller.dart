import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trail/app/modules/domain/value_object/image_picker.dart';

// Add Product Controller
class AddProductController extends GetxController {
  late Rx<TextEditingController> descriptionEditionController;
  late Rx<TextEditingController> priceEditionController;
  ImagePicker imagePicker =ImagePicker();
  @override
  void onInit() {
    descriptionEditionController = TextEditingController().obs;
    priceEditionController = TextEditingController().obs;
    super.onInit();
  }

  @override
  void onClose() {
    descriptionEditionController.value.dispose();
    priceEditionController.value.dispose();
  }
  pickImgFromGallery()async{
    // ImagePicker imagePicker = ImagePicker();
    // img = await imagePicker.pickImage(
    //   source: ImageSource.gallery,
    //   imageQuality: 85,
    // );

  }
  addProduct() {}
}

//  logoPick();
//               Reference ref = FirebaseStorage.instance
//                   .ref()
//                   .child('images')
//                   .child('${img!.path}');
//! =================================================================!//
//  Future<void> logoPick() async {
//     // print("${logo.value}");
//     ImagePicker imagePicker = ImagePicker();
//     img = await imagePicker.pickImage(
//       source: ImageSource.gallery,
//       imageQuality: 85,
//     );
//     // print("img ${img!.path}");
//     try {
//       await FirebaseStorage.instance
//           .ref('uploads/img')
//           .putFile(File(img!.path));
//     } on FirebaseException catch (e) {
//       // e.g, e.code == 'canceled'
//     }
//     // logo= EntityLogo(logo: img!.path);
//   }