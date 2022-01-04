import 'package:get/get.dart';

import '../modules/add_post/bindings/add_post_binding.dart';
import '../modules/add_post/views/add_product_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/products/bindings/products_binding.dart';
import '../modules/products/views/products_view.dart';
import '../modules/sign_in/bindings/registration_binding.dart';
import '../modules/sign_in/views/sign_in_view.dart';
import '../modules/sign_up/bindings/sign_up_binding.dart';
import '../modules/sign_up/bindings/sign_up_binding.dart';
import '../modules/sign_up/views/sign_up_view.dart';
import '../modules/sign_up/views/sign_up_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const SignInView(),
      binding: RegistrationBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PRODUCT,
      page: () => const AddProductView(),
      binding: AddPostBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCTS,
      page: () => ProductsView(),
      binding: ProductsBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
  ];
}
