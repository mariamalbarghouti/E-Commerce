import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:trail/app/modules/add_product/domain/product_repo.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:trail/app/routes/app_pages.dart';
import 'package:trail/core/print_logger.dart';
// import 'package:timeago/timeago.dart' as timeago;
import 'package:trail/app/core/infrastucture/firebase_helper.dart';

// Product Details Controller
class ProductDetailsController extends GetxController {
  ProductDetailsController(this.productRepo);
  final IProductRepo productRepo;
  Product product = Get.arguments;
  // email
  final Rx<String> email = "".obs;
  // for making more hidden or not
  final Rx<bool> isMine = false.obs;
  // list of options [delete, update]
  final List<String> moreDetailsList = ["Delete", "Update"];
  // selected item
  final Rx<String> selectedItemFromMoreDetails = "Delete".obs;

  @override
  void onInit() async {
    // product = Get.arguments;

    // To Make Drop Menu of
    // Delete or Update
    // shown if the post is user's his own
    // or not

    isMine.value =
        ((await Get.find<FirebaseFirestore>().userID) == product.uid!.id);

    // retrive seller account
    email.value = (await product.uid?.get().then((value) => (value.data()as Map<String,dynamic>)["email"]))!;
    super.onInit();
  }

  // Delete Or Update Function
  Future<void> deleteOrUpdate({required String? itemName}) async {
    switch (itemName) {
      case "Delete":
        _deletepost();
        break;

      case "Update":
        Get.toNamed(Routes.ADD_PRODUCT, arguments: product);
        break;

      default:
        return;
    }
  }

// Delete The Post
  Future<void> _deletepost() async {
    // Check if delete post have failure or not
    bool deletePostHasFailures = await productRepo
        .deletePostInfo(id: product.id!)
        .then((value) => value.isSome());

    // Check if delete image have failure or not
    bool deleteImagesHasFailures = await productRepo
        .deletePostImages(id: product.id!)
        .then((value) => value.isSome());
    // Make UI Send Message
    if (deletePostHasFailures && deleteImagesHasFailures) {
      Get.snackbar("Failure", "An Error Have Been Occurs");
    } else {
      Get.snackbar("Success", "You Have Deleted The Post!");
      return Get.offNamed(Routes.HOME);
    }
  }
}
