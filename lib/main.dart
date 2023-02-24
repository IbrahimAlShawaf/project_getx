import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'controller/signincontroller.dart';
import 'views/theme/themeservice.dart';
import 'widget/routes.dart';

void main() async {
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
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
