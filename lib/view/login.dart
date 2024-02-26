import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proevent/controller/login_controller.dart';
import 'AfterLogin.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome to ProEvent",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              controller: _usernameController,
              keyboardType: TextInputType.text, // Change the keyboard type to TextInputType.text
              decoration: InputDecoration(
                labelText: 'Username', // Change the label to 'Username'
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                var username = _usernameController.text;
                var password = _passwordController.text;

                if (GetUtils.isLengthGreaterThan(username, 0) &&
                    GetUtils.isLengthGreaterThan(password, 5)) {
                  //GetUtils pour effectuer des vérifications sur la longueur du nom d'utilisateur et du mot de passe,
                  // Valid login logic
                  Get.find<LoginController>().textFromLogin.value = username;
                  //: Cette ligne de code met à jour la valeur de la propriété textFromLogin dans l'instance du contrôleur
                  // de Login (LoginController) avec la valeur du nom d'utilisateur (username)

                  // Navigate to AfterLogin
                  Get.to(() => AfterLogin());
                } else {
                  // Show error message for invalid login
                  String errorMessage = 'Invalid username or password';
                  if (username.isEmpty) {
                    errorMessage = 'Username cannot be empty';
                  } else if (password.length <= 5) {
                    errorMessage = 'Password must be at least 6 characters';
                  }

                  Get.snackbar(
                    'Error',
                    errorMessage,
                    backgroundColor: Colors.red,
                    colorText: Colors.white,
                  );
                }
              },
              child: Text("Login"),
            ),

          ]
            ),

        ),

    );
  }
}
