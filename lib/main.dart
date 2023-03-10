import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_getx/controller/local_controller.dart';
import 'package:project_getx/views/languages/translations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controller/signincontroller.dart';
import 'views/theme/themeservice.dart';
import 'widget/routes.dart';

late SharedPreferences sharedpref;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedpref = await SharedPreferences.getInstance();
  await GetStorage.init();

  Get.put(UserController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final box = GetStorage();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   MylocalController controller =  Get.put(MylocalController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Translation(),
      locale: controller.initialLang, //const Locale('ar'),
     // fallbackLocale: const Locale('en'),
      title: 'Project In getx',
      theme: ThemeService().lightTheme,
      darkTheme: ThemeService().darkTheme,
      themeMode: ThemeService().getThemeMode(),
      initialRoute: '/',
      // initialRoute: box.read('loggedIn') == true ? '/Home' : '/LoginPage',
      getPages: Routes.routes,
    );
  }
}
