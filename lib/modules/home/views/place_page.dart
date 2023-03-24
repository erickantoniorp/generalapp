import 'package:flutter/material.dart';
import 'package:generalapp/modules/home/controllers/controllers.dart';
import 'package:get/get.dart';

class PlacePage extends GetView<PlaceController> {
   
    const PlacePage({Key? key}) : super(key: key);
   
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('Sede - ')),
            body: Container(
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
            )
        );
    }
}