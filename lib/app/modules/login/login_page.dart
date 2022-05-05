import 'package:app_amplify/app/modules/login/login_controller.dart';
import 'package:app_amplify/app/modules/widgets/text_fields/custom_text_field.dart';
import 'package:app_amplify/app/routes/app_pages.dart';
import 'package:app_amplify/app/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/buttons/custom_button.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        color: AppColors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "LOGIN TESTE AWS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.purple,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 40),
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
              title: "Entrar",
              style: CustomButtonStyle.stylePurple,
              onPressed: () {
                controller.loginUsuario();
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Não possui conta? ",
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black87,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    print("ROTA CADASTRO");
                    Get.toNamed(Routes.REGISTER);
                  },
                  child: const Text(
                    "Cadastrar",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
