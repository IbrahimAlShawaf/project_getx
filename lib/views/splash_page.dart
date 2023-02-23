import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_getx/views/home_page.dart';
import 'package:project_getx/views/onboarding.dart';
import 'package:project_getx/widget/appcolor.dart';
import 'package:project_getx/widget/assetsimages.dart';

import '../widget/app_text.dart';

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
        const OnBoarding(),
        transition: Transition.fade,
        duration: const Duration(seconds: 1),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AppImage.logoImage,
            ),
            const SizedBox(
              height: 20,
            ),
            TextWidget(
              text: 'Getx App',
              size: 64,
              fontWeight: FontWeight.bold,
              color: AppColor.prColor,
              textalign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
