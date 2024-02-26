import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/login_controller.dart';
import 'login.dart';

class AfterLogin extends StatelessWidget {
  final String? username = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome, ${username ?? 'Guest'}!'),
            GetX<LoginController>(
              builder: (controller) {
                final textFromLogin = controller.textFromLogin ?? '';
                return Text(
                  'username is: $textFromLogin',
                  style: TextStyle(fontWeight: FontWeight.bold),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to Login screen
                Get.back(result: Login());
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
