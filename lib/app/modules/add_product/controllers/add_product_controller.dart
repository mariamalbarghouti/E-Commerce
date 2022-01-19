import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_absolute_path/flutter_absolute_path.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:path_provider/path_provider.dart';
import 'package:trail/app/modules/add_product/domain/value_object/description.dart';
import 'package:trail/app/modules/add_product/domain/value_object/image_picker.dart';
import 'package:trail/app/modules/add_product/domain/value_object/price.dart';
import 'package:trail/app/modules/add_product/domain/value_object/title.dart';
import 'package:trail/app/routes/app_pages.dart';
import 'package:path/path.dart';

// Add Product Controller
class AddProductController extends GetxController {
  late Rx<TextEditingController> descriptionEditionController;
  late Rx<TextEditingController> priceEditionController;
  late Rx<TextEditingController> titleEditionController;
  File? pickedPhoto;
  var images = <Asset>[].obs;

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
    List<Asset> resultList = <Asset>[];
    String error = 'No Error Detected';

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 5,
        enableCamera: true,
        selectedAssets: images,
        materialOptions: const MaterialOptions(
          actionBarColor: "#000000",
          actionBarTitle: "Select Image",
          allViewTitle: "All Photos",
          // actionBarTitleColor: '#090909',
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }
    print("path ${pickedPhoto!.path}");
    images.value = resultList;
  }

  deleteImage(int index) {
    images.removeAt(index);
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
  // Add Product
  addProduct() async {
    if (pickedPhoto != null &&
        (addProductFormKey.currentState?.validate() ?? false)) {
      String docID = FirebaseFirestore.instance.collection('products').doc().id;
      await _uploadProductDetails(docID);
      await _uploadImage(docID);
    } else {
      Get.snackbar(
        "Error",
        "Please Enter All Your Data",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  _uploadProductDetails(docID) async {
    try {
      final filePath =
          await FlutterAbsolutePath.getAbsolutePath(images[0].identifier ?? "");
      await FirebaseStorage.instance
          .ref('products/$docID')
          .putFile(File(filePath ?? "")); //File(pickedPhoto!.path));
    } catch (e) {
      // e.g, e.code == 'canceled'
      print(e.toString());
    }
  }
  _uploadImage(docID)async{
     try {
        // FirebaseStorage.instance
        //   .ref('users/products/$docID/')
        //   .putFile(File(basename(images[0].name??"")));
        // images[0].name??""
        // uploadTask.whenComplete(() async {
        //   url = await FirebaseStorage.instance
        //       .ref('users/products/$docID/')
        //       .getDownloadURL();
        // }).catchError((onError) {
        //   print(onError);
        // });
        await FirebaseFirestore.instance.collection("products").doc(docID).set({
          "imgUrl": url,
        }, SetOptions(merge: true));
        Get.snackbar(
          "Sucess",
          "Your Product Is Added",
          snackPosition: SnackPosition.BOTTOM,
        );
        Get.toNamed(Routes.HOME);
      } catch (e) {
        print("\n Error $e \n");
      }
  }
}
