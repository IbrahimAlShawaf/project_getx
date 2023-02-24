import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_getx/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MylocalController extends GetxController {
  Locale initialLang =
      sharedpref.getString("lang") == null ? Get.deviceLocale! :  Locale(sharedpref.getString("lang")!);

  void changeLang(String codeLang) {
    Locale locale = Locale(codeLang);
    sharedpref.setString("lang", codeLang);
    Get.updateLocale(locale);
  }
}
