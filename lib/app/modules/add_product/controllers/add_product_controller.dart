import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trail/app/modules/add_product/domain/value_object/description.dart';
import 'package:trail/app/modules/add_product/domain/value_object/image_picker.dart';

// Add Product Controller
class AddProductController extends GetxController {
  late Rx<TextEditingController> descriptionEditionController;
  late Rx<TextEditingController> priceEditionController;
  File? pickedPhoto;
  GlobalKey<FormState> addProductFormKey = GlobalKey();
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

  // Image Picker
  pickImgFromGallery() async {
    ImagePicker imagePicker = ImagePicker();
    late PhotoPicker photoPicker;
    XFile? img = await imagePicker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 85,
    );
    photoPicker = PhotoPicker(photo: img!.path);
    photoPicker.value.fold(
      (l) => Get.snackbar(
        "Process Failed",
        l.msg,
        snackPosition: SnackPosition.BOTTOM,
      ),
      (r) => pickedPhoto = r,
    );
    update();
  }
// Description Validator
  descriptionValidator() {
    return Description(
        description: descriptionEditionController.value.text
      );
  }
  // descriptionEditionController.value

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