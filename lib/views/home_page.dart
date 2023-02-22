import 'package:flutter/material.dart';
import 'package:project_getx/widget/appcolor.dart';
import 'package:project_getx/widget/apptext.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text(
              text: 'My Home page',
              size: 32.0,
              color: AppColor.prColor,
              bold: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
