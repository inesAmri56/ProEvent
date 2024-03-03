import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:proevent/view/home.dart';
import 'package:proevent/view/registration_employee.dart';
import 'controller/authController.dart';
import 'view/login.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(AuthController(), permanent: true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home:EmployeeRegistrationForm(),
      initialBinding: BindingsBuilder(() {
        Get.put(RegistrationController());
      }),
      getPages: [
        GetPage(
          name: '/login',
          page: () => LoginPage(),
        ),
        GetPage(
          name: '/home',
          page: () => Home(), // Replace 'Home()' with the actual widget for your home page
        ),
      ],
    );
  }
}
