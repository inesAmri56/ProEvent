import 'package:get/get.dart';

class LoginController extends GetxController {
  RxString textFromLogin = ''.obs;
  //RxString: Il s'agit d'une classe fournie par "GetX" qui étend les fonctionnalités de
  // la classe de base Rx. Dans ce contexte, elle est utilisée pour créer une chaîne de texte réactive.
  //.obs: C'est une extension qui transforme la chaîne de texte en une variable

  void updateTextFromLogin(String newText) {
    textFromLogin.value = newText;
  }
}