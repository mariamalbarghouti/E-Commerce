import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_absolute_path/flutter_absolute_path.dart';
import 'package:get/get.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:trail/app/modules/add_product/domain/product_repo.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/description.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/list_of_5.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/price.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/title.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:trail/app/routes/app_pages.dart';
import 'package:trail/core/print_logger.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

// Add Product Controller
class AddProductController extends GetxController {
  AddProductController(this.productRepo);
  Product? updateProduct = Get.arguments;
  final IProductRepo productRepo;
  late TextEditingController descriptionEditionController;
  late TextEditingController priceEditionController;
  late TextEditingController titleEditionController;
  late // Rx<
      RoundedLoadingButtonController //>
      addProductController;
  var _pickedAsset = <Asset>[];
  Rx<Product> product = Product.empty().obs;

  @override
  void onInit() {
    // initialize the controllers
    descriptionEditionController = TextEditingController();
    priceEditionController = TextEditingController();
    titleEditionController = TextEditingController();
    addProductController = RoundedLoadingButtonController();

    super.onInit();
  }

  @override
  void onReady() {
    // If Update
    if (updateProduct != null) {
      product.value = product.value.copyWith(
        title: updateProduct!.title,
        description: updateProduct!.description,
        price: updateProduct!.price,
        id: updateProduct!.id,
        uid: updateProduct!.uid,
        // pickedImages: updateProduct!.pickedImages,
      );
      // _pickedAsset=updateProduct!.pickedImages.getOrCrash();
      titleEditionController.text = updateProduct!.title.getOrCrash();
      descriptionEditionController.text =
          updateProduct!.description.getOrCrash();
      priceEditionController.text = updateProduct!.price.getOrCrash();
    }
    super.onReady();
  }

  @override
  void onClose() {
    titleEditionController.dispose();
    descriptionEditionController.dispose();
    priceEditionController.dispose();
    super.onClose();
  }

  // Image Picker
  Future<void> pickImgFromGallery() async {
    try {
      // Pick Image From Gallery
      _pickedAsset = await MultiImagePicker.pickImages(
        maxImages: 5,
        enableCamera: true,
        selectedAssets: _pickedAsset,
        materialOptions: const MaterialOptions(
          actionBarColor: "#000000",
          actionBarTitle: "Select Image",
          allViewTitle: "All Photos",
          // actionBarTitleColor: '#090909',
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
      // Convert Asset To File
      await _convertAssetIntoFile();
      // coloredPrint(msg: "msg ${product.toString()}", color: LogColors.green);
    } on Exception catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

// Delete Image From UI
  Future<void> deleteImage(int index) async {
    // Delete UI
    _pickedAsset.removeAt(index);
    // Delete Data to Domain
    product.value.pickedImages.deleteIndex(index);
  }

  // Title Validator
  String? titleValidator() {
    // Copy The Value
    product = product.value.copyWith(
      title: ProductTitle(
        title: titleEditionController.text,
      ),
    ).obs;
    // return validation value
    return product.value.title.value.fold((l) => l.msg, (r) => null);
  }

  // Description Validator
  String? descriptionValidator() {
    // Copy The Value
    product = product.value.copyWith(
      description: Description(
        description: descriptionEditionController.text,
      ),
    ).obs;
    // return validation value
    return product.value.description.value.fold((l) => l.msg, (r) => null);
  }

  // Price Validator
  String? priceValidator() {
    // Copy The Value
    product = product.value.copyWith(
      price: Price(
        price: priceEditionController.text,
      ),
    ).obs;
    // return validation value
    return product.value.price.value.fold((l) => l.msg, (r) => null);
  }

  // Add Product
  Future<void> addProduct() async {
    // if there is NO failures
    // add product
    // else
    // error
    if (!product.value.failureOption.isSome()) {
      // add product
      if (updateProduct == null) {
        await _uploadProduct();
      } else {
        await _updateProduct();
      }
      // success btn
      addProductController.success();
    } else {
      // button error
      addProductController.error();
      // error snackbar
      Get.snackbar(
        "Error",
        "${product.value.failureOption.fold(() => none(), (a) => a.msg)}",
        snackPosition: SnackPosition.BOTTOM,
      );
      // after 3 seconds make button reset
      Future.delayed(const Duration(seconds: 3))
          .whenComplete(() => addProductController.reset());
    }
  }

// Update Product
  Future<void> _updateProduct() async {
    await productRepo.update(product: product.value).then(
          (value) => value.fold(
            () {
              Get.snackbar(
                "Success",
                "You Have Updated The Product",
                snackPosition: SnackPosition.BOTTOM,
              );
              Get.offAllNamed(Routes.HOME);
            },
            (a) => Get.snackbar(
              "Error",
              a.msg,
              snackPosition: SnackPosition.BOTTOM,
            ),
          ),
        );
  }

  // Upload Data
  Future<void> _uploadProduct() async {
    // Upload Images
    Option<List<String>> _downloadedImages = await _uploadImagesToFirestorage();
    // Upload Product Info
    _downloadedImages.fold(
      () => none(),
      (a) async {
        // copy the value
        product.value = product.value.copyWith(
          pickedImages: ListOf5<String>(listOf5: a),
        );
        // Upload Product Info
        await _uploadProductInfo();
      },
    );
  }

  // Upload Images to Firebase
  Future<Option<List<String>>> _uploadImagesToFirestorage() async {
    return await productRepo
        .uploadProductImages(
            images: (product.value.pickedImages) as ListOf5<File>)
        .then(
          (value) => value.fold((l) {
            Get.snackbar(
              "Error",
              l.msg,
              snackPosition: SnackPosition.BOTTOM,
            );
            return none();
          }, (r) {
            return some(r);
          }),
        );
  }

//  Upload Product Info to Firebase
  Future<void> _uploadProductInfo() async {
    await productRepo.createProduct(product: product.value).then(
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
                "Success",
                "Your Product Has Been Added Successfully",
                snackPosition: SnackPosition.BOTTOM,
              );
              // Go back
              return Get.offAllNamed(Routes.HOME);
            },
          ),
        );
  }

  // Covert Asset into File
  Future<void> _convertAssetIntoFile() async {
    var imagesForUI = <File>[];
    // Convert Asset To File
    await Future.wait(
      _pickedAsset.map((element) async {
        if (element.identifier != null) {
          // Convert Asset Into Add File
          imagesForUI.add(
            File(await FlutterAbsolutePath.getAbsolutePath(
                    element.identifier!) ??
                ""),
          );
        } else {
          return;
        }
      }),
    );
    // Copy the value
    product.value = product.value
        .copyWith(pickedImages: ListOf5<File>(listOf5: imagesForUI));
  }
}
