import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../models/Usuario.dart';

class RegisterController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final nomeController = TextEditingController();
  final emailController = TextEditingController();
  final tokenController = TextEditingController();
  late int idUsuario = 0;

  _cadastrarUsuario() async {
    final item = Usuario(
      email: emailController.text.trim(),
      token: tokenController.text.trim(),
      nome: nomeController.text.trim(),
      foto: "Lorem ipsum dolor sit amet",
      tipoConta: 2,
      idUsuario: "$idUsuario",
    );

    await Amplify.DataStore.save(item);
    Get.snackbar(
      "Cadastro",
      "Cadastro feito com sucesso!",
      borderRadius: 20,
      backgroundColor: Colors.green,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.all(30),
    );
  }

  buscarUsuario2() async {
    await Amplify.DataStore.start();
  }

  buscarUsuario() async {
    try {
      List<Usuario> usuarios = await Amplify.DataStore.query(
        Usuario.classType,
        where: Usuario.IDUSUARIO.eq("$idUsuario").and(
              Usuario.EMAIL.eq(emailController.text.trim()),
            ),
      );
      if (usuarios.isEmpty) {
        _cadastrarUsuario();
      } else {
        Get.snackbar(
          "Cadastro",
          "Cadastro já existe! [e-mail]",
          borderRadius: 20,
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
          margin: const EdgeInsets.all(30),
        );
      }
    } on DataStoreException catch (e) {
      print("Could not query DataStore: " + e.toString());
    }
  }
}
