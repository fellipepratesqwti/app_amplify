import 'dart:async';
import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:get/get.dart';
import '../../../amplifyconfiguration.dart';
import '../../../models/ModelProvider.dart';

class AmplifyManager extends GetxController {
  // Configuração e inicialização do amplify
  configureAmplify() async {
    try {
      Future.wait([
        Amplify.addPlugin(
            AmplifyDataStore(modelProvider: ModelProvider.instance)),
        Amplify.addPlugin(AmplifyAPI()),
      ]);

      await Amplify.configure(amplifyconfig);
      print('Configured');
    } on AmplifyAlreadyConfiguredException {
      print(
          'Amplify was already configured. Looks like app restarted on android.');
    } catch (err) {
      print(err);
    }
  }
}
