import 'package:get/get.dart';
import 'package:trail/app/modules/home/domain/repositories/sign_out_repo.dart';
import 'package:trail/app/routes/app_pages.dart';

// App Drawer Controller
// TODO make it better
class AppDrawerController extends GetxController {
  
  final IHomeRepository signedInUserRepo;
  // final SignedInUserService signedInUserService;
  AppDrawerController({
    required this.signedInUserRepo,
    // required this.signedInUserService,
  });
// Sigin Out
 Future<void> signOut() async {
    await signedInUserRepo.signOut();
   return Get.offAllNamed(Routes.SIGN_IN);
  }
// go to add post
 Future<void> goToAddPost()async{
    await Get.find<AppDrawerController>().signOut();
  }
}
