import 'package:app_amplify/app/modules/login/login_binding.dart';
import 'package:app_amplify/app/modules/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get_storage/get_storage.dart';
import 'app/data/services/amplify_manager.dart';
import 'app/routes/app_pages.dart';
import 'app/themes/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await AmplifyManager().configureAmplify();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends GetView {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData.fromWindow(WidgetsBinding.instance!.window),
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.LOGIN,
          initialBinding: LoginBinding(),
          home: const LoginPage(),
          theme: appThemeData,
          defaultTransition: Transition.noTransition,
          getPages: AppPages.routes,
          locale: const Locale('pt', 'BR'),
        ),

    );
  }
}