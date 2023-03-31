import 'package:get/get.dart';
import 'package:project_getx/binding/userbinding.dart';

import '../views/Auth/signin_page.dart';
import '../views/home_page.dart';
import '../views/onboarding.dart';
import '../views/splash_page.dart';
import '../views/theme/settingtheme.dart';

class Routes {
  static final routes = [
    GetPage(name: '/', page: () => const SplashPage()),
    GetPage(name: '/Home', page: () =>  MyHomePage()),
    GetPage(name: '/OnBoarding', page: () => const OnBoarding()),
    GetPage(name: '/LoginPage', page: () => LoginPage(), binding: UserBinding()),
    GetPage(name: '/Setting', page: () => MySetting()),
    // GetPage(name: '/profile', page: () => Profile()),
    // GetPage(name: '/profile', page: () => Profile()),
  ];
}
