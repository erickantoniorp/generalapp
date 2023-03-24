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
          body: ListView.separated(
          itemCount: controller.getUserTaskListSize(),
          itemBuilder: (context, i) {
          return Card(
              child: ListTile(
                  title: Text(controller.getUserTaskListByPos(i)),
                  //subtitle: Text(subtitles[index]),
                  leading: CircleAvatar(
                      backgroundImage: const NetworkImage(
                          "https://images.unsplash.com/photo-1547721064-da6cfb341d50")
                  ),
                  trailing: const Icon( Icons.arrow_forward_ios_outlined, color: Colors.indigo, ),
                  onTap: () {
                      final game = controller.getUserTaskListByPos(i);
                      print( game );
                      Get.to(PlacePage());
                  },
              ), 
          );
        }, separatorBuilder: ( _ , __ ) => const Divider(), 
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