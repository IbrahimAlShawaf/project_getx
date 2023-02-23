import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class UserController extends GetxController {
  final box = GetStorage();
  var loggedIn = false.obs;
  

  @override
  void onInit() {
    super.onInit();
    loggedIn.value = box.read('loggedIn') ?? false;
  }

  void login(String name, String email, String password) {
    // Add your authentication logic here
    // ...
    loggedIn.value = true;
    box.write('loggedIn', true);
  }

  void logout(UserController userController) {
    // Add your logout logic here
    // ...
    loggedIn.value = false;
    box.write('loggedIn', false);
  }
}









// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';

// class MyController extends GetxController {
//   final nameController = TextEditingController();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final storage = GetStorage();

//   var nameError = RxString('');
//   var emailError = RxString('');
//   var passwordError = RxString('');

//   void validate() {
//     nameError.value = '';
//     emailError.value = '';
//     passwordError.value = '';

//     final name = nameController.text.trim();
//     final email = emailController.text.trim();
//     final password = passwordController.text.trim();

//     if (GetUtils.isEmail(emailController.text)) {
//       storage.write('email', emailController.text);
//     } else {
//       Get.snackbar(
//         'InCorrect Email',
//         'Provide Email in valid format',
//         colorText: Colors.white,
//         backgroundColor: Colors.red,
//         snackPosition: SnackPosition.BOTTOM,
//       );
//     }

//     if (password.isEmpty) {
//       passwordError.value = 'Password is required';
//     } else if (password.length < 6) {
//       passwordError.value = 'Password must be at least 6 characters';
//     } else {
//       Get.snackbar(
//         'InCorrect Password',
//         'Provide Password in valid format',
//         colorText: Colors.white,
//         backgroundColor: Colors.red,
//         snackPosition: SnackPosition.BOTTOM,
//       );
//     }
//   }
// }
