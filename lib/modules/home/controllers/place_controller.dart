import 'package:generalapp/modules/home/models/models.dart';
import 'package:get/get.dart';

class PlaceController extends GetxController { 
      var thisTask = null.obs;
      var placeList = [
          Place(nombre: "Sede 1", direccion: "Direccion 1", tipo: 1),
          Place(nombre: "Sede 2", direccion: "Direccion 2", tipo: 1),
          Place(nombre: "Sede 3", direccion: "Direccion 3", tipo: 2),
          Place(nombre: "Sede 4", direccion: "Direccion 4", tipo: 2),
      ].obs;

      var curPlace = Place(nombre: "", direccion: "").obs;
      
}