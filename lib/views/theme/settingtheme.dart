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
            text: 'Change Theme',
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
        child: Card(
          child: ListTile(
            title: TextWidget(
                text: 'Change Theme',
                color: AppColor.titleColor,
                size: 24,
                fontWeight: FontWeight.bold,
                textalign: TextAlign.center),
            subtitle: TextWidget(
                text: 'Change Theme',
                color: AppColor.subtitleColor,
                size: 18,
                fontWeight: FontWeight.bold,
                textalign: TextAlign.center),
            trailing: IconButton(
              onPressed: () {
                ThemeService().changeTheme();
              },
              icon: Icon(moonIcon),
              iconSize: 35,
            ),
          ),
        ),
      ),
    );
  }
}
