import 'dart:io';
import 'package:trail/app/core/infrastucture/firebase_helper.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_absolute_path/flutter_absolute_path.dart';
import 'package:get/get.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:trail/app/modules/add_product/domain/failures/server_failures.dart';
import 'package:trail/app/modules/add_product/domain/product_repo.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/description.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/price.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/title.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:trail/app/routes/app_pages.dart';
import 'package:path/path.dart';

// Add Product Controller
class AddProductController extends GetxController {
  AddProductController(this.productRepo);
  final IProductRepo productRepo;
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
    // late PhotoPicker photoPicker;
    // photoPicker.value.fold(
    //   (l) => Get.snackbar(
    //     "Process Failed",
    //     l.msg,
    //     snackPosition: SnackPosition.BOTTOM,
    //   ),
    //   (r) => pickedPhoto = r,
    // );
    List<Asset> resultList = <Asset>[];

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
      // TODO
      print("Exception image error $e");
    }
    images.value = [...resultList];
  }

  // Delete Image From UI
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
    if (addProductFormKey.currentState?.validate() ?? false) {
      // TODO Just Swap [1,2]
      // TODO [2]
      // Upload post details
      await _uploadProductInfoToFireStore();
      // TODO [1]
      // Upload Images To Firebase
      await _uploadImageToFireSrtorage();
    } else {
      Get.snackbar(
        "Error",
        "Please Enter All Your Data",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  // Upload User's Info
  Future<void> _uploadProductInfoToFireStore() async {
    return await productRepo
        .createProduct(
          product: Product(
            title: ProductTitle(title: titleEditionController.value.text),
            price: Price(price: priceEditionController.value.text),
            description: Description(
              description: descriptionEditionController.value.text,
            ),
          ),
        )
        .then(
          (value) => value.fold(
            (l) {
              Get.snackbar(
                "Error",
                l.msg,
                snackPosition: SnackPosition.BOTTOM,
              );
            },
            (r) {
              Get.snackbar(
                "Sucess",
                "Your Product Has Been Added Sucessfully",
                snackPosition: SnackPosition.BOTTOM,
              );
              Get.offNamed(Routes.HOME);
            },
          ),
        );
  }

  //  Upload Products's Images To FireStorage
  Future<void> _uploadImageToFireSrtorage() async {
    return await productRepo.uploadProductImages(images: images).then(
          (value) => value.fold(
            (l) => Get.snackbar(
              "Error",
              l.msg,
              snackPosition: SnackPosition.BOTTOM,
            ),
            (r) => Get.snackbar(
              "Sucess",
              "Your Product Has Been Added Sucessfully",
              snackPosition: SnackPosition.BOTTOM,
            ),
          ),
        );
  }

//  Upload Image
  Future<void> _uploadProductDetails(docID) async {
    try {
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
