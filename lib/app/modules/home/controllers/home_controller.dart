import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:trail/app/modules/home/domain/repositories/sign_out_repo.dart';
import 'package:trail/core/print_logget.dart';

class HomeController extends GetxController {
  HomeController({required this.homeRepository});
 final IHomeRepository homeRepository;
  
  goToProduct()async{
   
// snapshot.data!.docs.map((DocumentSnapshot document) {
//               Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
//                 return ListTile(
//                   title: Text("${data['age']}"),
//                   subtitle: Text("${data['full_name']}"),
//                 );
//               }).toList(),
  }
  
  
}
