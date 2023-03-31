import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_getx/main.dart';
import 'package:project_getx/utils/appstorage.dart';

class MylocalController extends GetxController {
  Locale initialLang = GetStorage().read("lang") == null
      ? Get.deviceLocale!
      : Locale(GetStorage().read("lang"));
  // Locale initialLang = sharedpref.getString("lang") == null
  //     ? Get.deviceLocale!
  //     : Locale(sharedpref.getString("lang")!);

  void changeLang(String codeLang) {
    Locale locale = Locale(codeLang);
    GetStorage().write("lang", codeLang);
    //sharedpref.setString("lang", codeLang);
    Get.updateLocale(locale);
  }
}
