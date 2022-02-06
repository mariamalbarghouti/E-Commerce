import 'package:get/get.dart';
import 'package:trail/app/modules/home/domain/repositories/sign_out_repo.dart';

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
  signOut() async {
    // TODO finish it
    await signedInUserRepo.signOut();

    // if (await signedInUserRepo.isUserOut()) {
    //   signedInUserService.isUserOut(isUserOut: true);
    //   print("User Signed Out");
    //   Get.offAllNamed(Routes.SIGN_IN);
    // } else {
    //   print("User Signed In");
    //   signedInUserService.isUserOut(isUserOut: false);
    //   Get.offAllNamed(Routes.HOME);
    // }
  }
}
