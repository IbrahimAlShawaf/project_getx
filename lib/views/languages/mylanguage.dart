import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_getx/controller/local_controller.dart';

import '../../widget/app_text.dart';
import '../../widget/appcolor.dart';
import '../home_page.dart';

class MyLanguage extends StatelessWidget {
  MyLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    MylocalController controllerLang = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.prColor,
        // elevation: 0.0,
        centerTitle: true,
        title: TextWidget(
            text: '2'.tr,
            color: AppColor.textColor,
            size: 32,
            fontWeight: FontWeight.bold,
            textalign: TextAlign.center),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          iconSize: 20,
          onPressed: () => Get.to(
            () => MyHomePage(),
            transition: Transition.fadeIn,
            duration: const Duration(seconds: 1),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                controllerLang.changeLang("ar");
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(300, 55),
              ),
              child: TextWidget(
                  text: '3'.tr,
                  color: AppColor.bgColor,
                  size: 32,
                  fontWeight: FontWeight.bold,
                  textalign: TextAlign.center),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                controllerLang.changeLang("en");
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(300, 55),
              ),
              child: TextWidget(
                  text: '4'.tr,
                  color: AppColor.bgColor,
                  size: 32,
                  fontWeight: FontWeight.bold,
                  textalign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
