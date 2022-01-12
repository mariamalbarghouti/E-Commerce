import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trail/app/modules/add_product/domain/value_object/description.dart';
import 'package:trail/app/modules/add_product/domain/value_object/image_picker.dart';
import 'package:trail/app/modules/add_product/domain/value_object/price.dart';
import 'package:trail/app/modules/add_product/domain/value_object/title.dart';
import 'package:trail/app/routes/app_pages.dart';

// Add Product Controller
class AddProductController extends GetxController {
  late Rx<TextEditingController> descriptionEditionController;
  late Rx<TextEditingController> priceEditionController;
  late Rx<TextEditingController> titleEditionController;
  File? pickedPhoto;
  GlobalKey<FormState> addProductFormKey = GlobalKey();
  @override
  void onInit() {
    descriptionEditionController = TextEditingController().obs;
    priceEditionController = TextEditingController().obs;
    titleEditionController = TextEditingController().obs;
    super.onInit();
  }

  @override
  void onClose() {
    titleEditionController.value.dispose();
    descriptionEditionController.value.dispose();
    priceEditionController.value.dispose();
    super.dispose();
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

  // Title Validator
  titleValidator() {
    return ProductTitle(title: titleEditionController.value.text).value.fold(
          (l) => l.msg,
          (r) => null,
        );
  }

// Description Validator
  descriptionValidator() {
    return Description(description: descriptionEditionController.value.text)
        .value
        .fold(
          (l) => l.msg,
          (r) => null,
        );
  }

// Price Validator
  priceValidator() {
    return Price(price: priceEditionController.value.text).value.fold(
          (l) => l.msg,
          (r) => null,
        );
  }

  addProduct() async {
    if (pickedPhoto != null &&
        (addProductFormKey.currentState?.validate() ?? false)) {
      String docID = FirebaseFirestore.instance.collection('products').doc().id;
      var url = "";
      try {
        await FirebaseFirestore.instance.collection("products").doc(docID).set({
          "storageID": docID,
          "uid": FirebaseAuth.instance.currentUser?.uid,
          "description": descriptionEditionController.value.text,
          "price": priceEditionController.value.text,
        });
      } catch (e) {
        print("\n Error $e \n");
      }
      try {
        UploadTask uploadTask = FirebaseStorage.instance
            .ref('users/products/$docID/')
            .putFile(pickedPhoto!);
        uploadTask.whenComplete(() async {
          url = await FirebaseStorage.instance
              .ref('users/products/$docID/')
              .getDownloadURL();
          await FirebaseFirestore.instance
              .collection("products")
              .doc(docID)
              .set({
            "imgUrl": url,
          }, SetOptions(merge: true));
          Get.snackbar(
            "Sucess",
            "Your Product Is Added",
            snackPosition: SnackPosition.BOTTOM,
          );
        }).catchError((onError) {
          print(onError);
        });
        Get.toNamed(Routes.PRODUCTS);
      } catch (e) {
        print("\n Error $e \n");
      }
    } else {
      Get.snackbar(
        "Error",
        "Please Enter All Your Data",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
