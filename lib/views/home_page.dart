import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_getx/widget/app_text.dart';
import 'package:project_getx/widget/appcolor.dart';

import '../controller/signincontroller.dart';
import 'mydrawer_page.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userController = Get.find<UserController>();
    return Scaffold(
      // backgroundColor: AppColor.bgColor,
      appBar: AppBar(
        backgroundColor: AppColor.prColor,
        // elevation: 0.0,
        centerTitle: true,
        title: TextWidget(
            text: '1'.tr,
            color: AppColor.textColor,
            size: 32,
            fontWeight: FontWeight.bold,
            textalign: TextAlign.center),
        // actions: [
        //   GestureDetector(
        //     onTap: () {
        //       userController.logout(userController);
        //     },
        //     child: const Icon(Icons.logout_outlined),
        //   ),
        // ],
       
        
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
              text: '10'.tr,
              size: 32.0,
              color: AppColor.prColor,
              fontWeight: FontWeight.bold,
              textalign: TextAlign.center,
            ),
            // ElevatedButton(
            //   onPressed: userController.logout,
            //   child: const Text('Log out'),
            // ),
          ],
        ),
      ),
    );
  }
}
