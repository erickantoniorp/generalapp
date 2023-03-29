import 'package:get/get.dart';

import '../models/task.dart';

class HomeController extends GetxController { 

//final task = const['Tarea 1','Tarea 2','Tarea 3', 'Tarea 4'];
var taskList = [
    Task(nombre: 'Tarea 1', descripcion: 'Desc. Tarea 1', fechaejec: "2023-03-28"),
    Task(nombre: 'Tarea 2', descripcion: 'Desc. Tarea 2', fechaejec: "2023-03-28"),
    Task(nombre: 'Tarea 3', descripcion: 'Desc. Tarea 3', fechaejec: "2023-03-28"),
    Task(nombre: 'Tarea 4', descripcion: 'Desc. Tarea 4', fechaejec: "2023-03-28"),
    Task(nombre: 'Tarea 5', descripcion: 'Desc. Tarea 5', fechaejec: "2023-03-27"),
    Task(nombre: 'Tarea 6', descripcion: 'Desc. Tarea 6', fechaejec: "2023-03-27"),
    Task(nombre: 'Tarea 7', descripcion: 'Desc. Tarea 7', fechaejec: "2023-03-27"),
    Task(nombre: 'Tarea 8', descripcion: 'Desc. Tarea 8', fechaejec: "2023-03-26"),
    Task(nombre: 'Tarea 9', descripcion: 'Desc. Tarea 9', fechaejec: "2023-03-26"),
    Task(nombre: 'Tarea 10', descripcion: 'Desc. Tarea 10', fechaejec: "2023-03-26"),
  ];

  var filteredList = [].obs;
@override void onInit() {
    // TODO: implement onInit
    //filteredList.value = taskList;
    super.onInit();
  }

@override
  void onReady() {
    //TODO: implement onReady
    //getUserTaskList();
    super.onReady();
  }
  
   List<Task>getUserTaskList() {
    return taskList;
  }

  int getUserTaskListSize() {
    print("Size: ${ filteredList.length }");
    return filteredList.length;
    //return taskList.length;
  }

  String getUserTaskListByPos(int i) {
    //return taskList[i].nombre;
    final Task task = filteredList[i];
    print("Task Pos: $i");
    print("Task Name: ${ task.nombre }");
    return task.nombre;
  }


  void filterList(String fecha) {
      print("Fecha: $fecha");
      print("Listado : $taskList");
      //filteredList.assignAll( taskList.where((task) => task.fechaejec == fecha).toList() );
      filteredList.value=  taskList.where((task) => task.fechaejec == fecha).toList() ;
  }
}