import 'package:app_amplify/app/modules/home/home_binding.dart';
import 'package:app_amplify/app/modules/home/home_page.dart';
import 'package:app_amplify/app/modules/register/register_binding.dart';
import 'package:app_amplify/app/modules/register/register_page.dart';
import 'package:get/get.dart';
import '../modules/login/login_binding.dart';
import '../modules/login/login_page.dart';
part 'app_routes.dart';

class AppPages {
  static final routes = [
    //LOGIN PAGE
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),

    //REGISTER PAGE
    GetPage(
      name: Routes.REGISTER,
      page: () => const RegisterPage(),
      binding: RegisterBinding(),
    ),

    //HOME PAGE
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
