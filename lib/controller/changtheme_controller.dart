import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeTheme extends GetxController {
  Rx<ThemeMode> themeMode = ThemeMode.light.obs;

  void setThemeMode(ThemeMode mode) {
    themeMode.value = mode;
    Get.changeThemeMode(mode);
  }

  ThemeMode getThemeMode() {
    return themeMode.value;
  }

  void toggleTheme() {
    if (themeMode.value == ThemeMode.light) {
      setThemeMode(ThemeMode.dark);
    } else {
      setThemeMode(ThemeMode.light);
    }
  }

  Color getPrimaryColor() {
    return themeMode.value == ThemeMode.light ? Colors.blue : Colors.teal;
  }

  Color getSecondaryColor() {
    return themeMode.value == ThemeMode.light ? Colors.green : Colors.red;
  }
}
