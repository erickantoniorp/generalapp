import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  LoginController();

  final _obj = ''.obs;
  set obj(value) => _obj.value = value;
  get obj => _obj.value;

  TextEditingController nombreCntl = TextEditingController();
  TextEditingController passwCntl = TextEditingController();
  //LoginRepository loginRepository = LoginRepository();

  validarCampos() {
    nombreCntl.text.isEmpty ? throw 'Rellenar Campo usuario' : null;
    passwCntl.text.isEmpty ? throw 'Rellenar Campo clave' : null;
  }

  Future<void> getDataUser() async {
    /*try {
      validarCampos();
      User user = await loginRepository.getDataUser(
          user: nombreCntl.text, pass: passwCntl.text);
      final box = GetStorage();
      await box.write('name', user.data.name);
      Get.offAllNamed(Routes.HOME);
    } catch (e) {
      EasyLoading.showInfo(e.toString());
    }*/
  }
}
