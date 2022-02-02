import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:trail/app/modules/home/domain/repositories/sign_out_repo.dart';
import 'package:trail/core/print_logget.dart';

class HomeController extends GetxController {
  HomeController({required this.homeRepository});
  final IHomeRepository homeRepository;

  goToProduct() async {
    homeRepository.fetchProducts();
    // Map<String, dynamic> 
    // List<Map<String, dynamic>> x= await FirebaseFirestore.instance.collection("products").get().then((value) => value.docs.map((e) => e.data()).toList());
    //  Map<String,dynamic> v=x[0];
    //  var c=v["uid"];
    //  print("object")
    coloredPrint(
      msg: "fetchProducts${await homeRepository.fetchProducts().first}",
      // msg: "${c}",
      color: LogColors.red,
    );


// snapshot.data!.docs.map((DocumentSnapshot document) {
//               Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
//                 return ListTile(
//                   title: Text("${data['age']}"),
//                   subtitle: Text("${data['full_name']}"),
//                 );
//               }).toList(),
  }
}
