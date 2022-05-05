import 'package:app_amplify/app/modules/register/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/buttons/custom_button.dart';
import '../widgets/text_fields/custom_text_field.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: ()=>Get.back(),
          child: const Icon(Icons.arrow_back, color: Colors.purple,),
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
                    "CADASTRO AWS",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 40),
                  CustomTextField(
                    label: "Nome",
                    textEditingController: controller.nomeController,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    label: "E-mail",
                    textEditingController: controller.emailController,
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    label: "Token",
                    textEditingController: controller.tokenController,
                    textInputType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(height: 60),
                  CustomButtonWidget(
                    height: 45,
                    width: double.infinity,
                    borderRadius: 40,
                    title: "Cadastrar",
                    style: CustomButtonStyle.stylePurple,
                    onPressed: () {
                      controller.buscarUsuario();
                    },
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
