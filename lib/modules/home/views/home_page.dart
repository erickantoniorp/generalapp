import 'package:flutter/material.dart';
import 'package:generalapp/modules/home/bindings/place_binding.dart';
import 'package:generalapp/modules/home/controllers/home_controller.dart';
import 'package:generalapp/modules/home/views/place_page.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());

    return Scaffold(
        appBar: AppBar(
          title: const Text('Listado de Tareas'),
        ),
        body: Column(children: [
          TextField(
            onChanged: (value) => controller.filterList(value),
            onTap: () {
              controller.chooseDate();
            },
            decoration: const InputDecoration(
              labelText: 'Seleccione Fecha',
            ),
          ),
          Expanded(
              child: Obx(() => (controller.filteredList.isEmpty)
                  ? (const Center(child: Text('Item no encontrado')))
                  : (ListView.separated(
                      itemCount: controller.getUserTaskListSize(),
                      itemBuilder: (context, i) {
                        return Card(
                          child: ListTile(
                            title: Text(controller.getUserTaskNameByPos(i)),
                            //subtitle: Text(subtitles[index]),
                            leading: const CircleAvatar(
                              backgroundImage:
                                  //NetworkImage( "https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg")
                                  AssetImage('assets/task.png'),
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.indigo,
                            ),
                            onTap: () {
                              final game = controller.getUserTaskNameByPos(i);
                              controller.curTask.value =
                                  controller.getUserTaskByPos(i);
                              print(game);
                              print(controller.curTask);
                              Get.to(() => const PlacePage(),
                                  binding: PlaceBinding());
                            },
                          ),
                        );
                      },
                      separatorBuilder: (_, __) => const Divider(),
                    )))),
        ]));
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