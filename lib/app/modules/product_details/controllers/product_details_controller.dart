import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:trail/core/print_logger.dart';
// import 'package:timeago/timeago.dart' as timeago;
import 'package:trail/app/core/infrastucture/firebase_helper.dart';

// Product Details Controller
class ProductDetailsController extends GetxController {
  // late Product product;
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
    // product=Get.arguments;

    // To Make Drop Menu of 
    // Delete or Update
    // shown if the post is user's his own
    // or not

    isMine.value =
        await Get.find<FirebaseFirestore>().userID == Get.arguments.uid!.id;
    // retrive seller account
    email.value = await Get.arguments.uid!
        .get()
        .then((value) async => await value.get("email"));
    super.onInit();
  }

  // Delete Or Update Function
  Future<void> deleteOrUpdate({required String? itemName}) async {
    switch (itemName) {
      case "Delete":
        {
          coloredPrint(msg: "Delete", color: LogColors.blue);
          break;
        }
      case "Update":
        {
          coloredPrint(msg: "Update", color: LogColors.blue);
          break;
        }
      default:
        return;
    }
  }
}
