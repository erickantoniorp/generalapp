import 'package:flutter/material.dart';
import 'package:generalapp/global/themes/dark_theme.dart';
import 'package:generalapp/modules/auth/bindings/login_binding.dart';
import 'package:generalapp/modules/auth/routes/pages.dart';
import 'package:generalapp/modules/auth/routes/routes.dart';
//import 'package:generalapp/modules/auth/views/login_page.dart';
import 'package:generalapp/modules/home/views/home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: AppRoutes.home,
    theme: appThemeData,
    defaultTransition: Transition.fade,
    initialBinding: LoginBinding(),
    getPages: AppPages.pages,
    home: HomePage(),
  ));
}


//GetView si la página solo depende de un solo controlador y evita usar el Get.find
//GetWidget es similar a getview pero se diferencia que da la misma intancia de Get.find siempre. Es muy util
//cuando se combina con Get.create
