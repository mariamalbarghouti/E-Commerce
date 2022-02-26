import 'package:get/get.dart';
import 'package:trail/app/core/domain/repo/sign_in_repository.dart';
import 'package:trail/app/routes/app_pages.dart';

// App Drawer Controller
class AppDrawerController extends GetxController {
  final IRegistrationRepository homeRepo;
  AppDrawerController({
    required this.homeRepo,
  });
/// Sign Out
  Future<void> signOut() async {
    await homeRepo.signOut();
    return Get.offAllNamed(Routes.SIGN_IN);
  }

/// go to add post
  Future<void> goToAddPost() async {
    return await Get.toNamed(Routes.ADD_PRODUCT);
  }
}
