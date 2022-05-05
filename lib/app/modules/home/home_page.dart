import 'package:app_amplify/app/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/text_fields/custom_text_field.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.purple,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
          padding: const EdgeInsets.all(30),
          color: Colors.white,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "ACESSO DADOS AWS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Obx(
                      () => Text(
                        "${controller.loginController.usuarios[0].nome}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
