import 'package:flutter/material.dart';
import 'package:generalapp/global/themes/dark_theme.dart';
import 'package:generalapp/modules/auth/bindings/login_binding.dart';
import 'package:generalapp/modules/auth/routes/pages.dart';
import 'package:generalapp/modules/auth/routes/routes.dart';
import 'package:generalapp/modules/auth/views/login_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.HOME,
    theme: appThemeData,
    defaultTransition: Transition.fade,
    initialBinding: LoginBinding(),
    getPages: AppPages.pages,
    home: LoginPage(),
  ));
}
