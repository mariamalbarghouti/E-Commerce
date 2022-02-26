import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_absolute_path/flutter_absolute_path.dart';
import 'package:get/get.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:trail/app/core/infrastructure/product_repo.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/description.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/list_of_5.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/price.dart';
import 'package:trail/app/modules/add_product/domain/value_object/components/title.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:trail/app/routes/app_pages.dart';
import 'package:trail/core/print_logger.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
// import 'package:path/path.dart' as path;
import "package:trail/app/core/file_helper.dart";
import 'package:path/path.dart' as Path;

// Add Product Controller
class AddProductController extends GetxController {
  AddProductController(this.productRepo);
  final IProductRepo productRepo;
  late TextEditingController descriptionEditionController;
  late TextEditingController priceEditionController;
  late TextEditingController titleEditionController;
  late RoundedLoadingButtonController addProductController;
  Rx<Product> product = Product.empty().obs;
  // for the picked image from Gallery
  // I need to use this specific image picker
  // [multi_image_picker2] library
  // it is dealing with Asset not File
  // so i will handel it soon
  var _pickedAsset = <Asset>[];
  // for making the count of picking images
  // from gallery variable accourding to
  // the number of images from db
  int _imagePickerCount = ListOf5.maxLength;
  // for deleting it from db at the end
  // when the user click update
  final List<String> _deletedImages = [];

  @override
  void onInit() {
    // initialize the controllers
    descriptionEditionController = TextEditingController();
    priceEditionController = TextEditingController();
    titleEditionController = TextEditingController();
    addProductController = RoundedLoadingButtonController();

    // If Update
    if (Get.arguments != null) {
      // get the data
      product.update(
        (val) => product = val!
            .copyWith(
              title: (Get.arguments as Product).title,
              description: (Get.arguments as Product).description,
              price: (Get.arguments as Product).price,
              id: (Get.arguments as Product).id,
              uid: (Get.arguments as Product).uid,
              pickedImages: (Get.arguments as Product).pickedImages,
            )
            .obs,
      );
      // initialize the selection count from gallery
      // according to the count of images from db
      _imagePickerCount -= product.value.pickedImages.length;
      // Initialize The UI Text Field
      titleEditionController.text =
          (Get.arguments as Product).title.getOrCrash();
      descriptionEditionController.text =
          (Get.arguments as Product).description.getOrCrash();
      priceEditionController.text =
          (Get.arguments as Product).price.getOrCrash();
    }
    super.onInit();
  }

  @override
  void onClose() {
    titleEditionController.dispose();
    descriptionEditionController.dispose();
    priceEditionController.dispose();
    super.onClose();
  }

  /// Image Picker
  Future<void> pickImgFromGallery() async {
    try {
      // Pick Image From Gallery
      _pickedAsset = await MultiImagePicker.pickImages(
        // as if update
        // minus the number of max Images
        maxImages: _imagePickerCount,
        enableCamera: true,
        selectedAssets: _pickedAsset,
        materialOptions: const MaterialOptions(
          actionBarColor: "#000000",
          actionBarTitle: "Select Image",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
      // Convert Asset To File
      await _convertAssetIntoFile();
    } on Exception catch (e) {
      Get.snackbar(
        "Error",
        e.toString(),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  /// Delete Image From UI
  Future<void> deleteImage({
    required int index,
    required dynamic image,
  }) async {
    // If Image Is File So Delete From Assets "Gallery Picker"
    // the count of images is auto deleted
    // else
    // increase the image picker from gallery count
    // after if
    // delete from UI

    if (product.value.pickedImages.getOrCrash()[index].runtimeType != String) {
      _pickedAsset.removeWhere(
          (element) => element.name == (image as File).fileNameWithExtention);
    } else {
      // Make Image Picker From Gallery
      // Count Increased By One
      _imagePickerCount += 1;
      _deletedImages.add(product.value.pickedImages.getOrCrash()[index]);
    }
    // Delete Data from UI
    product.update((val) => val!.pickedImages.deleteByIndex(index));
  }

  /// Title Validator
  String? titleValidator() {
    // Copy The Value
    product = product.value
        .copyWith(
          title: ProductTitle(
            title: titleEditionController.text,
          ),
        )
        .obs;
    // product.refresh();
    // return validation value
    return product.value.title.value.fold((l) => l.msg, (r) => null);
  }

  /// Description Validator
  String? descriptionValidator() {
    // Copy The Value
    product = product.value
        .copyWith(
          description: Description(
            description: descriptionEditionController.text,
          ),
        )
        .obs;
    // return validation value
    return product.value.description.value.fold((l) => l.msg, (r) => null);
  }

  /// Price Validator
  String? priceValidator() {
    // Copy The Value
    product = product.value
        .copyWith(
          price: Price(
            price: priceEditionController.text,
          ),
        )
        .obs;
    // product.refresh();

    // return validation value
    return product.value.price.value.fold((l) => l.msg, (r) => null);
  }

  /// Add Product
  /// Or
  /// Update
  Future<void> addOrUpdateProduct() async {
    // if there is NO failures
    // add product
    // else
    // error
    if (!product.value.failureOption.isSome()) {
      // add product
      if (Get.arguments == null) {
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

  /// Covert Asset into File
  Future<void> _convertAssetIntoFile() async {
    var _assetsConvertedToFile = <File>[];
    // Convert Asset To File
    await Future.wait(
      _pickedAsset.map((element) async {
        if (element.identifier != null) {
          // Convert Asset Into File
          _assetsConvertedToFile.add(
            _fileWithOriginalAssetName(
                file: File(await FlutterAbsolutePath.getAbsolutePath(
                        element.identifier ?? "") ??
                    ""),
                assetName: "${element.name}"),
          );
        } else {
          return;
        }
      }),
    );

    // merge images from db and gallery
    // if it is update
    // and user does not delete the images before
    // getting more from Gallery
    List<dynamic> _imagesFromDBAndGallery = [];
    if (Get.arguments != null &&
        (Get.arguments as Product).pickedImages.isNotEmpty) {
      // images from Gallery
      _imagesFromDBAndGallery.addAll(_assetsConvertedToFile);
      // images from db
      _imagesFromDBAndGallery.addAll(product.value.pickedImages.getOrCrash());
    }
    // Copy the value
    product.update(
      (value) => product = value!
          .copyWith(
            pickedImages: ListOf5<dynamic>(
              listOf5: (Get.arguments != null &&
                      (Get.arguments as Product).pickedImages.isNotEmpty)
                  // if there is update
                  // merge the images [String, File]
                  ? _imagesFromDBAndGallery
                  // else
                  // put File
                  : _assetsConvertedToFile,
            ),
          )
          .obs,
    );
  }

  /// When I convert the Image from Asset To file
  /// it's given a new name
  /// i need the Asset Have the same name as File
  /// to be deleted easily
  File _fileWithOriginalAssetName({
    required File file,
    required String assetName,
  }) {
    // get the auto given name
    // file.path.split("/").last;
    // String x= file.fileNameWithExtent;
    // get the original path
    // replace the auto given name by the original
    String _filePathWithOriginalName =
        file.path.replaceAll(file.fileNameWithExtention, assetName);
    // rename the file
    file = file.renameSync(_filePathWithOriginalName);
    return file;
  }

  /// Upload Data
  Future<void> _uploadProduct() async {
    // Upload Images
    Option<List<String>> _downloadedImages = await _uploadImagesToFirestorage();
    // Upload Product Info
    _downloadedImages.fold(
      () => none(),
      (a) async {
        // copy the value
        product = product.value
            .copyWith(
              pickedImages: ListOf5<String>(listOf5: a),
            )
            .obs;
        // Upload Product Info
        await _uploadProductInfo();
      },
    );
  }

  /// Upload Images to Firebase
  Future<Option<List<String>>> _uploadImagesToFirestorage() async {
    return await productRepo
        .uploadProductImages(
            // I have Created pickedImages as dynamic
            // To make it as an specific type
            // just convert it like so
            images: product.value.pickedImages
                .convertDynamicListToAnSpecificDataType<File>())
        .then(
          (value) => value.fold(
            (l) {
              Get.snackbar(
                "Error",
                l.msg,
                snackPosition: SnackPosition.BOTTOM,
              );
              return none();
            },
            (r) => some(r),
          ),
        );
  }

  ///  Upload Product Info to Firebase
  Future<void> _uploadProductInfo() async {
    await productRepo.createProductInfo(product: product.value).then(
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

  /// Update Product
  /// I need to separate the old and new images
  /// if new upload to firestore
  Future<void> _updateProduct() async {
    // ListOf5<File> _listOfNewPickedImages;
    List<File> _listOfNew = [];
    List<String> _listOfOldImages = [];
    // separate new images && old images
    for (int i = 0; i < product.value.pickedImages.length; i++) {
      if (product.value.pickedImages.getOrCrash()[i].runtimeType != String) {
        _listOfNew.add(product.value.pickedImages.getOrCrash()[i]);
      } else {
        _listOfOldImages.add(product.value.pickedImages.getOrCrash()[i]);
      }
    }
    // Delete Images the user is deleted from UI
    // which is came from DB
    await _deleteSpecificImagesFromDB();

    // upload new images To Firestorage
    if (_listOfNew.isNotEmpty) {
      // delete the douplicated images before upload to firestore
      Option<List<String>> _downloadedImages = await _updateImages(
        updateNewImages: ListOf5<File>(
            listOf5: _deleteDuplicatedImagesFromTheImagesFromDBAndGalleryImages(
          newImages: _listOfNew,
        )),
      );
      // Upload Product Info
      _downloadedImages.fold(
        () => none(),
        (a) async {
          // copy the value
          product = product.value
              .copyWith(
                  pickedImages:
                      ListOf5<String>(listOf5: _listOfOldImages..addAll(a)))
              .obs;

          // Upload Product Info
          await _updateProductInfo();
        },
      );
    } else {
      // No Update In Images
      await _updateProductInfo();
    }
  }

  /// returns with a list of only new picked images
  /// Will Get The Name Of DB Images
  /// && File Images Name
  /// Then if there is any duplication
  /// delete it
  List<File> _deleteDuplicatedImagesFromTheImagesFromDBAndGalleryImages({
    required List<File> newImages,
  }) {
    List<String> _imagesName = [];
    // get the images name
    // from Gallery and db
    for (int i = 0; i < product.value.pickedImages.length; i++) {
      if (product.value.pickedImages.getOrCrash()[i].runtimeType == String) {
        // extract the name from url
        _imagesName.add(Uri.decodeFull(
          Path.basename(
            (product.value.pickedImages.getOrCrash()[i] as String)
                .replaceAll(RegExp(r'(\?alt).*'), ''),
          ),
        ).split("/").last);
      } else {
        // name of file
        _imagesName.add((product.value.pickedImages.getOrCrash()[i] as File)
            .fileNameWithoutExtention
            .split("/")
            .last);
      }
    }
    // delete douplicated images
    for (int i = 0; i < _imagesName.length - 1; i++) {
      for (int j = i + 1; j < _imagesName.length; j++) {
        if (_imagesName[i] == _imagesName[j]) {
          // remove from forloop
          _imagesName.removeAt(j);
          // remove from product
          product.value.pickedImages.deleteByIndex(i);
          // remove this from new images, the user picked from Gallery
          newImages.removeWhere(
              (element) => element.fileNameWithoutExtention == _imagesName[i]);
          // back to the same index
          j = j - 1;
        }
      }
    }
    return newImages;
  }

  /// Delete Image If User Clicked Delete
  /// and This Image Is from Server
  Future<void> _deleteSpecificImagesFromDB() async {
    if (_deletedImages.isNotEmpty) {
      await productRepo.deletePostImages(
        product: product.value.copyWith(
          pickedImages: ListOf5<String>(listOf5: _deletedImages),
        ),
      );
    }
  }

  /// Update Images
  Future<Option<List<String>>> _updateImages({
    required ListOf5<File> updateNewImages,
  }) async {
    return await productRepo
        .updateProductImages(
          images: updateNewImages,
          id: product.value.id!,
        )
        .then(
          (value) => value.fold(
            (l) {
              Get.snackbar(
                "Error",
                l.msg,
                snackPosition: SnackPosition.BOTTOM,
              );
              return none();
            },
            (r) => some(r),
          ),
        );
  }

  /// Update Product Information
  Future<void> _updateProductInfo() async {
    await productRepo
        .updateProductInfo(
          product: product.value,
        )
        .then(
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
}
