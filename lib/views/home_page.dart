import 'package:flutter/material.dart';
import 'package:project_getx/widget/app_text.dart';
import 'package:project_getx/widget/appcolor.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextWidget(
              text: 'My Home page',
              size: 32.0,
              color: AppColor.prColor, fontWeight: FontWeight.bold, textalign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
