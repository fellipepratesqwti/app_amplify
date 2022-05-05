import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../models/Usuario.dart';
import '../../routes/app_pages.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final tokenController = TextEditingController();
  RxList usuarios = [].obs;
  RxBool isSynced = false.obs;

  @override
  onInit() {
    super.onInit();
  }

  loginUsuario() async {
    Stream<QuerySnapshot<Usuario>> stream = Amplify.DataStore.observeQuery(
      Usuario.classType,
      where: Usuario.EMAIL.eq(emailController.text.trim()) &
      (Usuario.TOKEN.eq(tokenController.text.trim())),
      sortBy: [Usuario.EMAIL.ascending()],
    );

    // update local variables each time a new snapshot is received
    stream.listen((QuerySnapshot<Usuario> snapshot) {
        usuarios.value = snapshot.items;
        isSynced.value = snapshot.isSynced;
    });

    if(isSynced.value = true && usuarios.value.isNotEmpty){
      print("--------------------------");
      print(usuarios);
      print("--------------------------");
      Get.toNamed(Routes.HOME);
    }

/*
    try {
      usuarios.value = await Amplify.DataStore.query(
        Usuario.classType,
        where: Usuario.EMAIL.eq(emailController.text.trim()).and(
              Usuario.TOKEN.eq(tokenController.text.trim()),
            ),
      );
      if (usuarios.isNotEmpty) {
        print("--------------------------");
        print(usuarios);
        print("--------------------------");
        Get.toNamed(Routes.HOME);
      } else {
        Get.snackbar(
          "Login",
          "Usuário não encontrado!",
          borderRadius: 20,
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.BOTTOM,
          margin: const EdgeInsets.all(30),
        );
      }
    } catch (e) {
      print("Could not query DataStore: " + e.toString());
    }
 */
  }
}
