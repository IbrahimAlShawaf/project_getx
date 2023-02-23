import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/changtheme_controller.dart';

class MySetting extends StatelessWidget {
  MySetting({super.key});
  //final ChangeTheme controller = Get.put(ChangeTheme());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Theme'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   'Current Theme Mode:',
            // ),
            // Obx(() => Text(
            //       '${controller.getThemeMode()}',
            //       style: Theme.of(context).textTheme.headline4,
            //     )),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (Get.isDarkMode) {
                  Get.changeTheme(ThemeData.light());
                } else {
                  Get.changeTheme(ThemeData.dark());
                }
              },
              //() => controller.toggleTheme(),
              child: Text('Toggle Theme'),
            ),
          ],
        ),
      ),
    );
  }
}
