import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:trail/app/modules/home/domain/repositories/sign_out_repo.dart';
import 'package:trail/app/routes/app_pages.dart';
import 'package:trail/core/services/get_signed_in_user_service.dart';

// App Drawer Controller
// TODO make it better
class AppDrawerController extends GetxController {
  AppDrawerController({
    required this.signedInUserRepo,
    required this.signedInUserService,
  });
  final ISignOutRepo signedInUserRepo;
  final SignedInUserService signedInUserService;
// Sigin Out
  signOut() async {
    await signedInUserRepo.signOut();

    if (await signedInUserRepo.isUserOut()) {
      Get.offAllNamed(Routes.SIGN_IN);

      signedInUserService.isUserOut(isUserOut: true);
    }else{
        Get.offAllNamed(Routes.HOME);
      signedInUserService.isUserOut(isUserOut: false);
    }
  }
}
