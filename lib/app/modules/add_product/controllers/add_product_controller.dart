import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:trail/app/modules/add_product/domain/product_repo.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/description.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/image_picker.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/price.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/title.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:trail/app/routes/app_pages.dart';
import 'package:trail/core/print_logget.dart';

// Add Product Controller
class AddProductController extends GetxController {
  AddProductController(this.productRepo);
  final IProductRepo productRepo;
  late Rx<TextEditingController> descriptionEditionController;
  late Rx<TextEditingController> priceEditionController;
  late Rx<TextEditingController> titleEditionController;
  File? pickedPhoto;
  var images = <Asset>[].obs;
  final GlobalKey<FormState> addProductFormKey = GlobalKey();

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
  Future<void> pickImgFromGallery() async {
    try {
      images.value = await MultiImagePicker.pickImages(
        maxImages:5,
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
      Get.snackbar(
        "Error",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  // Delete Image From UI
  deleteImage(int index) {
    images.removeAt(index);
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
      // Upload post details
      await _uploadProduct();
      // Upload Images To Firebase
      // await _uploadImageToFireSrtorage();
    } else {
      Get.snackbar(
        "Error",
        "Please Enter All Your Data",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  // Upload Data
  Future<void> _uploadProduct() async {
    var images = await _uploadImagesToFirestorage();
    await _uploadProductInfo(images: images);
  }

  // Upload Images to Firebase
  Future<dynamic> _uploadImagesToFirestorage() async {
    return await productRepo.uploadProductImages(images: images).then(
          (value) => value.fold((l) {
            Get.snackbar(
              "Error",
              l.msg,
              snackPosition: SnackPosition.BOTTOM,
            );
          }, (r) {
            return r;
          }),
        );
  }

//  Upload Product Info to Firebase
  Future<void> _uploadProductInfo({required List<String> images}) async {
    await productRepo
        .createProduct(
          product: Product(
            title: ProductTitle(title: titleEditionController.value.text),
            price: Price(price: priceEditionController.value.text),
            description: Description(
              description: descriptionEditionController.value.text,
            ),
            pickedImages: ListOf5(listOfPickedImages: images),
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
}
