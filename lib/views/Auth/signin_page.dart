import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_getx/views/home_page.dart';
import 'package:project_getx/widget/appcolor.dart';
import 'package:project_getx/widget/assetsimages.dart';

import '../../controller/signincontroller.dart';

class LoginPage extends StatelessWidget {
  final userController = Get.find<UserController>();
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: const Text('Login')),
      body: SafeArea(
        child: Obx(() {
          if (userController.loggedIn.value) {
            return  MyHomePage();

            // Center(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text('You are logged in!'),
            //       SizedBox(height: 16),
            //       ElevatedButton(
            //         onPressed: userController.logout,
            //         child: Text('Log out'),
            //       ),
            //     ],
            //   ),
            // );
          } else {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(image: AppImage.logoImage),
                        TextFormField(
                          controller: _nameController,
                          decoration: const InputDecoration(
                            labelText: 'Name',
                            hintText: 'Enter Your Name',
                            suffixIcon: Icon(Icons.person_2_outlined),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            labelText: 'Email',
                            hintText: 'Enter Your Email',
                            suffixIcon: Icon(Icons.email_outlined),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _passwordController,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                            hintText: 'Enter Your Password',
                            suffixIcon: Icon(Icons.lock_outline),
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 32),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              userController.login(
                                _nameController.text,
                                _emailController.text,
                                _passwordController.text,
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.prColor,
                              fixedSize: const Size(320, 55)),
                          child: const Text('Log in'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
        }),
      ),
    );
  }
}








// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';

// class LoginPage extends StatelessWidget {
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final box = GetStorage();

//   void login() {
//     final email = emailController.text.trim();
//     final password = passwordController.text.trim();

//     if (GetUtils.isEmail(emailController.text) && password.length > 6) {
//       box.write('isLoggedIn', true);
//       Get.offAllNamed('/Home');
//     } else {
//       Get.snackbar(
//         'Error',
//         'Incorrect email or password',
//         backgroundColor: Colors.red,
//         colorText: Colors.white,
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Login')),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextFormField(
//               controller: emailController,
//               keyboardType: TextInputType.emailAddress,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 16),
//             TextFormField(
//               controller: passwordController,
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: login,
//               child: Text('Login'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
