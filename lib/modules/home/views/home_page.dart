import 'package:flutter/material.dart';
import 'package:generalapp/modules/home/controllers/home_controller.dart';
import 'package:generalapp/modules/home/views/place_page.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
   
    const HomePage({Key? key}) : super(key: key);
   
    @override
    Widget build(BuildContext context) {
        Get.put(HomeController());

        return Scaffold(
            appBar: AppBar(title: const Text('Listado de Tareas'),),
            body: Column(
                children: [
                    TextField(
                        onChanged: (value) => controller.filterList(value),
                        decoration: const InputDecoration(
                            labelText: 'Seleccione Fecha',
                        ),
                    ),
                    Expanded(
                        child: Obx(() =>
                            (controller.filteredList.isEmpty) ? ( const Center(child: Text('Item no encontrado') ) ) : 
                            (   ListView.separated(
                                itemCount: controller.getUserTaskListSize(),
                                itemBuilder: (context, i) {
                                    return Card(
                                        child: ListTile(
                                            title: Text(controller.getUserTaskListByPos(i)),
                                            //subtitle: Text(subtitles[index]),
                                            leading: const CircleAvatar(
                                                backgroundImage: NetworkImage(
                                                    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.flaticon.es%2Ficono-gratis%2Ftarea_747094&psig=AOvVaw2Wqv9W1gmATowR1Op-ztK_&ust=1680122364693000&source=images&cd=vfe&ved=0CA8QjRxqFwoTCPiKste9__0CFQAAAAAdAAAAABAE")
                                            ),
                                            trailing: const Icon( Icons.arrow_forward_ios_outlined, color: Colors.indigo, ),
                                            onTap: () {
                                                final game = controller.getUserTaskListByPos(i);
                                                print( game );
                                                Get.to(const PlacePage());
                                            },
                                        ), 
                                  );
                                }, 
                                separatorBuilder: ( _ , __ ) => const Divider(), 
                                )
                            )
                        )
                      ),
                ]
            )
        );
    }
}

/*
ListView.separated(
        itemCount: controller.getUserTaskListSize(),
        itemBuilder: (context, i) => ListTile( 
          title: Text( controller.getUserTaskListByPos(i) ),
          trailing: const Icon( Icons.arrow_forward_ios_outlined, color: Colors.indigo, ),
          onTap: () {
            final game = controller.getUserTaskListByPos(i);
            print( game );
          },
        ), 
        separatorBuilder: ( _ , __ ) => const Divider(), 
      )
*/