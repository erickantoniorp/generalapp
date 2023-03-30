import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../models/task.dart';

class HomeController extends GetxController { 

//final task = const['Tarea 1','Tarea 2','Tarea 3', 'Tarea 4'];
    //Para guardar la fecha seleccionada
    var selectedDate = DateTime.now().obs;
    //Para filtrar el listado principal
    var filteredList = [].obs;
    //Para saber que tarea es la seleccionada
    var curTaskId = ''.obs;
    var curTask = Task(descripcion: '', nombre: '', numtarea: '', fechaejec: '').obs;

    //Esta lista debe venir del servidor
    var taskList = [
        Task(nombre: 'Tarea 1', descripcion: 'Desc. Tarea 1', numtarea: '0001', fechaejec: "29/03/2023"),
        Task(nombre: 'Tarea 2', descripcion: 'Desc. Tarea 2', numtarea: '0002', fechaejec: "29/03/2023"),
        Task(nombre: 'Tarea 3', descripcion: 'Desc. Tarea 3', numtarea: '0003', fechaejec: "29/03/2023"),
        Task(nombre: 'Tarea 4', descripcion: 'Desc. Tarea 4', numtarea: '0004', fechaejec: "29/03/2023"),
        Task(nombre: 'Tarea 5', descripcion: 'Desc. Tarea 5', numtarea: '0005', fechaejec: "28/03/2023"),
        Task(nombre: 'Tarea 6', descripcion: 'Desc. Tarea 6', numtarea: '0006', fechaejec: "28/03/2023"),
        Task(nombre: 'Tarea 7', descripcion: 'Desc. Tarea 7', numtarea: '0007', fechaejec: "28/03/2023"),
        Task(nombre: 'Tarea 8', descripcion: 'Desc. Tarea 8', numtarea: '0008', fechaejec: "27/03/2023"),
        Task(nombre: 'Tarea 9', descripcion: 'Desc. Tarea 9', numtarea: '0009', fechaejec: "27/03/2023"),
        Task(nombre: 'Tarea 10', descripcion: 'Desc. Tarea 10', numtarea: '0010', fechaejec: "27/03/2023"),
      ];

    @override void onInit() {
        // TODO: implement onInit
        //
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
    }

    String getUserTaskNameByPos(int i) {
      final Task task = filteredList[i];
      return task.nombre;
    }

     Task getUserTaskByPos(int i) {
      final Task task = filteredList[i];
      return task;
    }

    String getUserTaskIdByPos(int i) {
      final Task task = filteredList[i];
      return task.numtarea;
    }


    void filterList(String fecha) {
        //filteredList.assignAll( taskList.where((task) => task.fechaejec == fecha).toList() );
        filteredList.value=  taskList.where((task) => task.fechaejec == fecha).toList() ;
    }


    DateTime getFirstDayOfCurrentDate(){

        final now = DateTime.now();
        var date = DateTime(now.year, now.month, 1).toString();
        var dateParse = DateTime.parse(date);
        return dateParse;
    }

    void chooseDate() async {
        DateTime? pickedDate = await showDatePicker(
        context: Get.context!,
        initialDate: selectedDate.value,//getFirstDayOfCurrentDate(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2024),
        currentDate: selectedDate.value,
        //initialEntryMode: DatePickerEntryMode.input,
        // initialDatePickerMode: DatePickerMode.year,
        helpText: 'Seleccione una fecha',
        cancelText: 'Cerrar',
        confirmText: 'Confirmar',
        errorFormatText: 'Ingrese una fecha válida',
        errorInvalidText: 'Ingrese un valor válido',
        fieldLabelText: 'DOB',
        fieldHintText: 'Dia/Mes/Anio'
        //selectableDayPredicate: disableDate
    );
    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
      filterList( DateFormat("dd/MM/yyyy")
                    .format(selectedDate.value).toString());
    }
  }

  bool disableDate(DateTime day) {
    if ((day.isAfter(DateTime.now().subtract(const Duration(days: 1))) &&
        day.isBefore(DateTime.now().add(const Duration(days: 5))))) {
      return true;
    }
    return false;
  }
}