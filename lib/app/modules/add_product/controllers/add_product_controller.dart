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
  final IAddProductRepo productRepo;
  late Rx<TextEditingController> descriptionEditionController;
  late Rx<TextEditingController> priceEditionController;
  late Rx<TextEditingController> titleEditionController;
  late Rx<RoundedLoadingButtonController> addProductController;
  var pickedImages = <Asset>[].obs;
  // final GlobalKey<FormState> addProductFormKey = GlobalKey<FormState>();
  final Rx<Product> _product = Product.empty().obs;
  @override
  void onInit() {
    descriptionEditionController = TextEditingController().obs;
    priceEditionController = TextEditingController().obs;
    titleEditionController = TextEditingController().obs;
    addProductController = RoundedLoadingButtonController().obs;
    super.onInit();
  }

  @override
  void onClose() {
    titleEditionController.value.dispose();
    descriptionEditionController.value.dispose();
    priceEditionController.value.dispose();
    super.onClose();
  }

  //   @override
  // void dispose() {
  //   // productRepo.
  //   scrollingController.value.dispose();
  //   super.dispose();
  // }

  // Image Picker
  Future<void> pickImgFromGallery() async {
    try {
      // Pick Image From Gallery
      pickedImages.value = await MultiImagePicker.pickImages(
        maxImages: 5,
        enableCamera: true,
        selectedAssets: pickedImages,
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
      // coloredPrint(msg: "msg ${_product.toString()}", color: LogColors.green);
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
    pickedImages.removeAt(index);
    // Delete Data to Domain
    _product.value.pickedImages.deleteIndex(index);
  }

  // Title Validator
  String? titleValidator() {
    // Copy The Value
    _product.value = _product.value.copyWith(
      title: ProductTitle(
        title: titleEditionController.value.text,
      ),
    );
    // return validation value
    return _product.value.title.value.fold((l) => l.msg, (r) => null);
  }

  // Description Validator
  String? descriptionValidator() {
    // Copy The Value
    _product.value = _product.value.copyWith(
      description: Description(
        description: descriptionEditionController.value.text,
      ),
    );
    // return validation value
    return _product.value.description.value.fold((l) => l.msg, (r) => null);
  }

  // Price Validator
  String? priceValidator() {
    // Copy The Value
    _product.value = _product.value.copyWith(
      price: Price(
        price: priceEditionController.value.text,
      ),
    );
    // return validation value
    return _product.value.price.value.fold((l) => l.msg, (r) => null);
  }

  // Add Product
  Future<void> addProduct() async {
    // if there is NO failures
    // add product
    // else
    // error
    if (!_product.value.failureOption.isSome()) {
      // add product
      await _uploadProduct();
      // sucess btn
      addProductController.value.success();
    } else {
      // button error
      addProductController.value.error();
      // error anackbar
      Get.snackbar(
        "Error",
        "${_product.value.failureOption.fold(() => none(), (a) => a.msg)}",
        snackPosition: SnackPosition.BOTTOM,
      );
      // after 3 seconds make button reset
      Future.delayed(const Duration(seconds: 3))
          .whenComplete(() => addProductController.value.reset());
    }
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
        _product.value = _product.value.copyWith(
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
            images: (_product.value.pickedImages) as ListOf5<File>)
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
    await productRepo.createProduct(product: _product.value).then(
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

  // Covert Asset into File
  Future<void> _convertAssetIntoFile() async {
    List<File> _imagesForDomain = <File>[];
    // Convert Asset To File
    await Future.wait(pickedImages.map((element) async {
      if (element.identifier == null) {
        return;
      } else if (await FlutterAbsolutePath.getAbsolutePath(
              element.identifier!) ==
          null) {
        return;
      } else {
        // Convert Asset Into Add File
        _imagesForDomain.add(
          File(await FlutterAbsolutePath.getAbsolutePath(element.identifier!) ??
              ""),
        );
      }
    }));

    // coloredPrint(msg: "CCC _imagesForDomain ${_imagesForDomain.length}");
    // Copy the value
    _product.value = _product.value
        .copyWith(pickedImages: ListOf5<File>(listOf5: _imagesForDomain));
    // coloredPrint(
    //     msg:
    //         "CCC element ${_product.value.pickedImages.value.fold((l) => l.msg, (r) => r)}",
    //     color: LogColors.red);
  }
}
