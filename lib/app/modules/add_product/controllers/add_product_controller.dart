import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kt_dart/collection.dart';
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
  var images = List<Asset>.unmodifiable([]).obs;//<Asset>[].obs;//emptyList<Asset>().obs;
  final GlobalKey<FormState> addProductFormKey = GlobalKey();
  late ListOf5<Asset> list5 = ListOf5(listOfPickedImages: <Asset>[]);

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
    // List<Asset> resultList = <Asset>[];
    try {
      // resultList
      // images.value = await MultiImagePicker.pickImages(
      //   maxImages: 30,
      //   enableCamera: true,
      //   selectedAssets: images,
      //   // list5.getOrElse( <Asset>[]),
      //   materialOptions: const MaterialOptions(
      //     actionBarColor: "#000000",
      //     actionBarTitle: "Select Image",
      //     allViewTitle: "All Photos",
      //     // actionBarTitleColor: '#090909',
      //     useDetailsView: false,
      //     selectCircleStrokeColor: "#000000",
      //   ),
      // );
      // coloredPrint(
      //   color: LogColors.yellow,
      //   msg: "list5.value${list5.value.length}",
      // );
      // images.value = [...resultList];
      // list5=ListOf5<Asset>(listOfPickedImages: resultList);
      images.value = await MultiImagePicker.pickImages(
        maxImages: 30,
        enableCamera: true,
        selectedAssets: images.toList(),
        // list5.getOrElse( <Asset>[]),
        materialOptions: const MaterialOptions(
          actionBarColor: "#000000",
          actionBarTitle: "Select Image",
          allViewTitle: "All Photos",
          // actionBarTitleColor: '#090909',
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
      return ListOf5<Asset>(listOfPickedImages: images).value.fold(
        (l) {
          return Get.snackbar(
            "Error",
            l.msg,
            snackPosition: SnackPosition.BOTTOM,
          );
        },
        (r) => r,
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
    // list5.getOrCrash().removeAt(index);
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
      await _uploadProduct();
      // TODO [1]
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
            pickedImages: images,
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
  // Future<void> _uploadImageToFireSrtorage() async {
  //   return await productRepo.uploadProductImages(images: images).then(
  //         (value) => value.fold(
  //           (l) => Get.snackbar(
  //             "Error",
  //             l.msg,
  //             snackPosition: SnackPosition.BOTTOM,
  //           ),
  //           (r) => Get.snackbar(
  //             "Sucess",
  //             "Your Product Has Been Added Sucessfully",
  //             snackPosition: SnackPosition.BOTTOM,
  //           ),
  //         ),
  //       );
  // }

//  Upload Image
  // Future<void> _uploadProductDetails(docID) async {
  //   try {
  //     await FirebaseFirestore.instance.collection("products").doc(docID).set({
  //       "imgUrl": url,
  //     }, SetOptions(merge: true));
  //     Get.snackbar(
  //       "Sucess",
  //       "Your Product Is Added",
  //       snackPosition: SnackPosition.BOTTOM,
  //     );
  //     Get.toNamed(Routes.HOME);
  //   } catch (e) {
  //     print("\n Error $e \n");
  //   }
  // }
}
