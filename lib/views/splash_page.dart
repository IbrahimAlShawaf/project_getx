import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_getx/views/home_page.dart';
import 'package:project_getx/widget/assetsimages.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      // bool? flag =
      //     sharedPrefController().getData(key: PrefKeys.isLogin.name) ?? false;
      // String routes = flag ? 'home' : 'Login';
      // Navigator.pushReplacementNamed(context, '/Home');
      Get.to(
        const MyHomePage(),
        transition: Transition.fade,
        duration: const Duration(seconds: 1),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
          image: AppImage.logoImage,
        ),
      ),
    );
  }
}
