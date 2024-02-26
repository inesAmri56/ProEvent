import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proevent/controller/login_controller.dart';
import 'package:proevent/view/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Login(),
        initialBinding: BindingsBuilder(() {
      // Bind the Controller to the Get instance
      Get.put(LoginController());
    }),
    );
  }
}



