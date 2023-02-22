import 'package:get/get.dart';

import '../views/home_page.dart';
import '../views/splash_page.dart';

class Routes {
  static final routes = [
    GetPage(name: '/', page: () => const SplashPage()),
    GetPage(name: '/Home', page: () => const MyHomePage()),
    // GetPage(name: '/profile', page: () => Setting()),
    // GetPage(name: '/profile', page: () => Profile()),
    // GetPage(name: '/profile', page: () => Profile()),
    // GetPage(name: '/profile', page: () => Profile()),
    // GetPage(name: '/profile', page: () => Profile()),
  ];
}
