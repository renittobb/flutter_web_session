import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
              controller.name.value,
              style: TextStyle(fontSize: 20),
            )),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: ()=> controller.logOut(), child: Text('Logout')),
          ],
        ),
      ),
    );
  }
}
