import 'package:app_amplify/app/modules/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final nomeController = TextEditingController();
  final emailController = TextEditingController();
  final tokenController = TextEditingController();
  final LoginController loginController = Get.find();

  @override
  void onInit() {
    nomeController.text = loginController.usuarios[0].nome;
    emailController.text = loginController.usuarios[0].email;
    tokenController.text = loginController.usuarios[0].token;
    super.onInit();
  }
}
