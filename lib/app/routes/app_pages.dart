import 'package:get/get.dart';
import 'package:trail/app/modules/splash/middleware/auth_middleware.dart';

import '../modules/add_product/bindings/add_post_binding.dart';
import '../modules/add_product/views/add_product_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/sign_in/bindings/registration_binding.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/sign_up/bindings/sign_up_binding.dart';
import '../modules/sign_up/views/sign_up_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.HOME;
  static final routes = [
    // Splash Page
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
      middlewares: [AuthMiddleware()],
      // children: [
      // ],
    ),
        // Sign Up
        GetPage(
          name: _Paths.SIGN_UP,
          page: () => const SignUpView(),
          binding: SignUpBinding(),
        ),
        // Sign In
        GetPage(
          name: _Paths.SIGN_IN,
          page: () => const SignInView(),
          binding: RegistrationBinding(),
        ),
        // Home
        GetPage(
          name: _Paths.HOME,
          page: () => const HomeView(),
          binding: HomeBinding(),
        ),
        // Add Products
        GetPage(
          name: _Paths.ADD_PRODUCT,
          page: () => const AddProductView(),
          binding: AddPostBinding(),
        ),
  ];
}
