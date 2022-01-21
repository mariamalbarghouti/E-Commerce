import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_absolute_path/flutter_absolute_path.dart';
import 'package:get/get.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
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
    // print("path ${pickedPhoto!.path}");
    images.value = resultList;
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
  // addProduct() async {
  //   print("pickedPhoto $pickedPhoto");
  //   if //(
  //     // pickedPhoto != null &&
  //       (addProductFormKey.currentState?.validate() ?? false)//)
  //        {
  //     String docID = FirebaseFirestore.instance.collection('products').doc().id;

  //     await _uploadProductDetails(docID);
  //     await _uploadFireStore(docID);
  //     await _uploadImageToFireSrtorage(docID);
  //   } else {
  //     Get.snackbar(
  //       "Error",
  //       "Please Enter All Your Data",
  //       snackPosition: SnackPosition.BOTTOM,
  //     );
  //   }
  // }
  addProduct() async {
    // print("pickedPhoto ${Price(price:priceEditionController.value.text ).getOrCrash()}");
    if //(
        // pickedPhoto != null &&
        (addProductFormKey.currentState?.validate() ?? false) //)
    {
      String docID = FirebaseFirestore.instance.collection('products').doc().id;

      // await _uploadProductDetails(docID);
      // await _uploadFireStore(docID);
      // await _uploadImageToFireSrtorage(docID);
      productRepo.createProduct(
        product: Product(
          title: ProductTitle(title: titleEditionController.value.text),
          price:  Price(price: priceEditionController.value.text),
          description:
              Description(description: descriptionEditionController.value.text),
        ),
      );
    } else {
      Get.snackbar(
        "Error",
        "Please Enter All Your Data",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  //  Upload Product Details
  Future<void> _uploadImageToFireSrtorage(docID) async {
    try {
      final filePath =
          await FlutterAbsolutePath.getAbsolutePath(images[0].identifier ?? "");
      await FirebaseStorage.instance
          .ref('products/$docID')
          .putFile(File(filePath ?? ""));
    } catch (e) {
      print(e.toString());
    }
  }
  // TODO put user id

  Future<void> _uploadFireStore(docID) async {
    try {
      await FirebaseFirestore.instance.collection("products").doc(docID).set({
        "title": titleEditionController.value.text,
        "price": priceEditionController.value.text,
        "description": descriptionEditionController.value.text,
      });
    } catch (e) {
      print("\n Error $e \n");
    }
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
