import 'package:generalapp/modules/auth/bindings/login_binding.dart';
import 'package:generalapp/modules/auth/routes/routes.dart';
import 'package:generalapp/modules/auth/views/login_page.dart';
import 'package:generalapp/modules/home/bindings/bindings.dart';
import 'package:generalapp/modules/home/views/views.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.login,
        page: () => LoginPage(),
        binding: LoginBinding()),
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.place,
      page: () => PlacePage(),
      binding: PlaceBinding(),
    ),
  ];
}