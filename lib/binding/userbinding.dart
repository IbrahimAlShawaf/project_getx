import 'package:get/get.dart';

import '../controller/signincontroller.dart';

class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(UserController());
  }

}