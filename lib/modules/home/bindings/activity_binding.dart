import 'package:generalapp/modules/home/controllers/controllers.dart';
import 'package:get/get.dart';

class ActivityBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ActivityController>(() => ActivityController());
  }
}