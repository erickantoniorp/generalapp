import 'package:flutter/material.dart';
import 'package:generalapp/modules/home/controllers/controllers.dart';
import 'package:generalapp/modules/home/views/views.dart';
import 'package:get/get.dart';

class PlacePage extends GetView<PlaceController> {
   
    const PlacePage({Key? key}) : super(key: key);
   
    @override
    Widget build(BuildContext context) {
        Get.put(PlaceController());      
        final homecont = Get.find<HomeController>();
        return Scaffold(
            appBar: AppBar(title: const Text('Monitoreo de Tarea')),
            body: 
            Column(
              mainAxisSize: MainAxisSize.min,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            initialValue: homecont.curTask.value.nombre,
                            onChanged: (value) {
                              //controller.setName(value);
                            },
                            decoration: const InputDecoration(
                              labelText: 'Nombre',
                            ),
                          ),
                          TextFormField(
                            initialValue: homecont.curTask.value.descripcion,
                            onChanged: (value) {
                              //controller.setEmail(value);
                            },
                            decoration: const InputDecoration(
                              labelText: 'Descripcion',
                            ),
                          ),
                          TextFormField(
                            initialValue: homecont.curTask.value.fechaejec,
                            onChanged: (value) {
                              //controller.setEmail(value);
                            },
                            decoration: const InputDecoration(
                              labelText: 'Fecha Ejecucion',
                            ),
                          ),
                          TextFormField(
                            initialValue: (homecont.curTask.value.estado>0)?("Activo"):("Inactivo"),
                            onChanged: (value) {
                              //controller.setEmail(value);
                            },
                            decoration: const InputDecoration(
                              labelText: 'Estado',
                            ),
                          ),
                        ],
                      ),
                  )
                ),
                SizedBox(
                    width: double.infinity,
                        child: Obx(() =>
                            (controller.placeList.isEmpty) ? ( const Center(child: Text('Sin Items') ) ) : 
                            (   
                                //PlaceListWidget(controller: controller) 
                                DataTable(
                                    columns: const [
                                      DataColumn(label: Text('Nombre')),
                                      DataColumn(label: Text('Verif.')),
                                      DataColumn(label: Text('Fec.Lleg')),
                                      DataColumn(label: Text('Fec.Term')),
                                    ],
                                    rows: List<DataRow>.generate(
                                        controller.placeList.length,
                                        (index) => DataRow(
                                            onSelectChanged: (isSelected) {
                                                print(isSelected);
                                                if(isSelected!){
                                                    controller.curPlace.value = controller.placeList[index];
                                                    Get.to(() => const ActivityPage());
                                                }
                                            },
                                            cells: [
                                              DataCell(
                                                Text(controller.placeList[index].nombre),
                                              ),
                                              DataCell(
                                                Text((controller.placeList[index].verificado)?("Si"):("No")),
                                              ),
                                              DataCell(
                                                Text((controller.placeList[index].fechallegada.isEmpty)?(''):(controller.placeList[index].fechallegada.toString())),
                                              ),
                                              DataCell(
                                                Text((controller.placeList[index].fechatermino.isEmpty)?(''):(controller.placeList[index].fechatermino.toString())),
                                              ),
                                            ],
                                        ),
                                    ),
                                )
                        )
                      )
                )
                //ButtonsGrid(),
              ],
            )
        );
    }
}

class PlaceListWidget extends StatelessWidget {
  const PlaceListWidget({
    super.key,
    required this.controller,
  });

  final PlaceController controller;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: controller.placeList.length,
        itemBuilder: (context, i) {
            return Card(
                child: ListTile(
                    title: Text(controller.placeList[i].nombre),
                    //subtitle: Text(subtitles[index]),
                    leading: const CircleAvatar(
                        backgroundImage: 
                        //NetworkImage( "https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg")
                        AssetImage('assets/task.png'),
                    ),
                    trailing: const Icon( Icons.arrow_forward_ios_outlined, color: Colors.indigo, ),
                    onTap: () {
                        final game = controller.placeList[i].nombre;
                        //controller.curTask.value = controller.getUserTaskByPos(i);
                        //print( game );
                        //print( controller.curTask );
                        Get.to(() => const ActivityPage());
                    },
                ), 
          );
        }, 
        separatorBuilder: ( _ , __ ) => const Divider(), 
        );
  }
}

class ButtonsGrid extends StatelessWidget {
  const ButtonsGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        padding: EdgeInsets.all(10),
        height: (MediaQuery.of(context).size.height) / 2,
        //margin: EdgeInsets.all(5),
        child: Card(
            child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(10),
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
                    Card(
                        color: Colors.lightBlue,
                        child: 
                            InkWell(
                                onTap: () {
                                  print("Actividad");
                                })
                    ),
                    Card(
                        color: Colors.yellow,
                        child: 
                            InkWell(
                                onTap: () {
                                  print("Otro");
                                })
                    ),
                ]
            )
        ),
    );
  }
}