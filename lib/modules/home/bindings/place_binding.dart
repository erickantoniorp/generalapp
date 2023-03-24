import 'package:generalapp/modules/home/controllers/controllers.dart';
import 'package:get/get.dart';

class PlaceBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlaceController>(() => PlaceController());
  }
}