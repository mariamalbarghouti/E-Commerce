import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:trail/app/modules/add_product/domain/value_object/product.dart';
import 'package:trail/core/print_logger.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:trail/app/core/infrastucture/firebase_helper.dart';

// Product Details Controller
class ProductDetailsController extends GetxController {
  late Product product;
  @override
  void onInit() {
    //
    product = Get.arguments;
    super.onInit();
  }

  fun() async {
    // int ts = 1638592424384;
// DateTime tsdate = DateTime.fromMillisecondsSinceEpoch(product.time )) ;
// String datetime = tsdate.year.toString() + "/" + tsdate.month.toString() + "/" + tsdate.day.toString();
// print(datetime);
    // product.time.
    //  var x= DateTime.parse();
    //  x = 
    //   FirebaseFirestore.instance.productsCollection
    //     // .orderBy('time', descending: true)
    //     .snapshots()
    //     .map(
    //   (snapshot) {
    //  snapshot.docs
    //         .map((doc) => coloredPrint(msg:"${doc.data()}"));
    // coloredPrint(msg: "msg", color: LogColors.green);
    //   },
    // );
   
    // timeago.format(product.time.toDate());
    //  coloredPrint(msg: "msg${product.time!.toString().substring(0,product.time!.toString().indexOf("."))}",color:LogColors.green);
  }
}
