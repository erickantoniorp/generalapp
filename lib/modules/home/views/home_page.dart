import 'package:flutter/material.dart';
import 'package:generalapp/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
   
   const HomePage({Key? key}) : super(key: key);
   
   @override
   Widget build(BuildContext context) {
    Get.put(HomeController());
       return Scaffold(
           appBar: AppBar(title: const Text('HomePage'),),
           body: ListView.separated(
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
      ),
       );
  }
}