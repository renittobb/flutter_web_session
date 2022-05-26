import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login View'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text(
              'User Login',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () => controller.registerUser(),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            child: Text(
              'Go Home - No Data Store',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () => controller.goHome(),
          ),
        ],
      )),
    );
  }
}
