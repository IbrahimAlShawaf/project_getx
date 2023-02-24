import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_getx/views/home_page.dart';
import 'package:project_getx/views/theme/settingtheme.dart';
import 'package:project_getx/widget/app_text.dart';

import '../widget/appcolor.dart';
import '../controller/signincontroller.dart';
import 'languages/mylanguage.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    IconData moonIcon = CupertinoIcons.moon_stars;
    final userController = Get.find<UserController>();
    return Drawer(
      width: 280,
      //  backgroundColor: AppColor.bgColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            duration: const Duration(milliseconds: 9000),
            curve: Curves.easeIn,
            decoration: BoxDecoration(
              image: const DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage(
                    'assets/images/team-work.png',
                  )),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              border: Border.all(
                color: AppColor.textColor,
                width: 3,
              ),
              color: AppColor.prColor,
            ),
            child: const Text(''),
          ),
          // Center(
          //   child: Container(
          //     padding: const EdgeInsets.symmetric(horizontal: 60),
          //     color: Colors.white,
          //     child: TextWidget(
          //       text: 'Name of App',
          //       color: AppColor.titleColor,
          //       size: 18,
          //       fontWeight: FontWeight.w600,
          //       textalign: TextAlign.center,
          //     ),
          //   ),
          // ),

          const SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 0.2,
            color: Colors.black.withOpacity(0.4),
          ),
          // SizedBox(
          //   height: 10,
          // ),
          // ignore: sort_child_properties_last
          ListTile(
            leading: Icon(
              Icons.home,
              color: AppColor.textColor,
              size: 35,
            ),
            title: TextWidget(
              text: '5'.tr,
              color: AppColor.prColor,
              size: 20,
              fontWeight: FontWeight.w600,
              textalign: TextAlign.center,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              // Navigator.of(context).pop();
              Get.back();
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: AppColor.textColor,
              size: 35,
            ),
            title: TextWidget(
              text: '6'.tr,
              color: AppColor.prColor,
              size: 20,
              fontWeight: FontWeight.w600,
              textalign: TextAlign.center,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              // Navigator.of(context).pushNamed('profile');
            },
          ),
          ListTile(
            leading: Icon(
              moonIcon,
              color: AppColor.textColor,
              size: 35,
            ),
            title: TextWidget(
              text: '7'.tr,
              color: AppColor.prColor,
              size: 20,
              fontWeight: FontWeight.w600,
              textalign: TextAlign.center,
            ),
            onTap: () {
              // Update the state of the app
              Get.to(
                () => MySetting(),
                transition: Transition.fadeIn,
                duration: const Duration(seconds: 1),
              );

              // ...
              // Then close the drawer
              //Navigator.of(context).pushNamed('setting');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.language_outlined,
              color: AppColor.textColor,
              size: 35,
            ),
            title: TextWidget(
              text: '8'.tr,
              color: AppColor.prColor,
              size: 20,
              fontWeight: FontWeight.w600,
              textalign: TextAlign.center,
            ),
            onTap: () {
              // Update the state of the app
              Get.to(
                () => MyLanguage(),
                transition: Transition.fadeIn,
                duration: const Duration(seconds: 1),
              );

              // ...
              // Then close the drawer
              //Navigator.of(context).pushNamed('setting');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.logout_outlined,
              color: AppColor.textColor,
              size: 35,
            ),
            title: TextWidget(
              text: '9'.tr,
              color: AppColor.prColor,
              size: 20,
              fontWeight: FontWeight.w600,
              textalign: TextAlign.center,
            ),
            onTap: () async {
              // Update the state of the app
              userController.logout(userController);
              // ...
              // Then close the drawer
              //SystemNavigator.pop();
              // final SharedPreferences sharedPreferences =
              //     await SharedPreferences.getInstance();
              // sharedPreferences.remove('email');
              // Navigator.of(context).pushNamed('signinscreen');
            },
          ),
        ],
      ),
    );
  }
}
