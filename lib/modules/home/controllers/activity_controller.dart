import 'package:generalapp/modules/home/models/activity.dart';
import 'package:get/get.dart';

class ActivityController extends GetxController { 
    var activityList = [
        Activity(numero: "001", descripcion: "Actividad 1", detalle: "Detalle Actividad 1"),
        Activity(numero: "002", descripcion: "Actividad 2", detalle: "Detalle Actividad 2"),
        Activity(numero: "003", descripcion: "Actividad 3", detalle: "Detalle Actividad 3"),
    ];
}