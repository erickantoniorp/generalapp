import 'package:get/get.dart';

class HomeController extends GetxController { 

final task = const['Tarea 1','Tarea 2','Tarea 3', 'Tarea 4'];

@override
  void onReady() {
    //TODO: implement onReady
    getUserTaskList();
    super.onReady();
  }
  
   List<String>getUserTaskList() {
    return task;
  }

  int getUserTaskListSize() {
    return task.length;
  }

  String getUserTaskListByPos(int i) {
    return task[i];
  }
}