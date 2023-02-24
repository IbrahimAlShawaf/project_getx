import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_getx/views/home_page.dart';
import 'package:project_getx/views/theme/themeservice.dart';
import 'package:project_getx/widget/app_text.dart';
import 'package:project_getx/widget/appcolor.dart';

class MySetting extends StatelessWidget {
  MySetting({super.key});
  IconData moonIcon = CupertinoIcons.moon_stars;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.prColor,
        // elevation: 0.0,
        centerTitle: true,
        title: TextWidget(
            text: '11'.tr,
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
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                    text: '11'.tr,
                    color: AppColor.textColor,
                    size: 24,
                    fontWeight: FontWeight.bold,
                    textalign: TextAlign.center),
                IconButton(
                  onPressed: () {
                    ThemeService().changeTheme();
                  },
                  icon: Icon(moonIcon),
                  iconSize: 35,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
