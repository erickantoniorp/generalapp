import 'package:flutter/material.dart';
import 'package:generalapp/modules/home/controllers/controllers.dart';
import 'package:get/get.dart';

class ActivityPage extends GetView<ActivityController> {
   
   const ActivityPage({Key? key}) : super(key: key);
   
   @override
   Widget build(BuildContext context) {

        Get.put(ActivityController());      
        final placecont = Get.find<PlaceController>();

       return Scaffold(
           appBar: AppBar(title: const Text('Listado de Sedes'),),
           body: Column(
              children: [
                  ActivityHeaderWidget(placecont: placecont),
                  SizedBox(
                      height: 100,
                      child: ActivityButtonsGrid()
                  )
              ],
           ),
       );
  }
}

class ActivityHeaderWidget extends StatelessWidget {
  const ActivityHeaderWidget({
    super.key,
    required this.placecont,
  });

  final PlaceController placecont;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            TextFormField(
              initialValue: placecont.curPlace.value.nombre,
              onChanged: (value) {
                //controller.setName(value);
              },
              decoration: const InputDecoration(
                labelText: 'Nombre',
              ),
            ),
            TextFormField(
              initialValue: (placecont.curPlace.value.verificado)?("Si"):("No"),
              onChanged: (value) {
                //controller.setEmail(value);
              },
              decoration: const InputDecoration(
                labelText: 'Verificado',
              ),
            ),
            TextFormField(
              initialValue: placecont.curPlace.value.fechallegada,
              onChanged: (value) {
                //controller.setEmail(value);
              },
              decoration: const InputDecoration(
                labelText: 'Fecha Llegada',
              ),
            ),
            TextFormField(
              initialValue: placecont.curPlace.value.fechatermino,
              onChanged: (value) {
                //controller.setEmail(value);
              },
              decoration: const InputDecoration(
                labelText: 'Fecha Termino',
              ),
            ),
          ],
        ),
    );
  }
}

class ActivityButtonsGrid extends StatelessWidget {
  const ActivityButtonsGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
        //height: 50, //(MediaQuery.of(context).size.height) / 3,
        //margin: EdgeInsets.all(5),
        child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(5),
                children: [
                    Card(
                        color: Colors.green,
                        child: 
                            InkWell(
                                onTap: () {
                                  print("Inicio");
                                })
                    ),
                    Card(
                        color: Colors.red,
                        child: 
                            InkWell(
                                onTap: () {
                                  print("Fin");
                                })
                    ),
                ]
            )
    );
  }
}