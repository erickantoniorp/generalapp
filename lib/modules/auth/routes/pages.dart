import 'package:generalapp/modules/auth/routes/routes.dart';
import 'package:generalapp/modules/auth/views/login_page.dart';
import 'package:generalapp/modules/home/views/home_page.dart';
import 'package:get/get.dart';

abstract class AppPages {
  static final pages = [GetPage(name: Routes.LOGIN, page: () => LoginPage()),
  GetPage(name: Routes.HOME, page: () => const HomePage())
  ];
}
