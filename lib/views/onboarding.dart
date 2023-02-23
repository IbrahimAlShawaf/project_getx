import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_getx/views/Auth/signin_page.dart';
import 'package:project_getx/views/home_page.dart';

import '../widget/appcolor.dart';
import '../widget/screen_widget.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int pageIndex = 0;

  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  pageIndex = value;
                });
              },
              itemCount: 3,
              controller: pageController,
              itemBuilder: ((context, index) {
                return ScreenWidget(
                  index: pageIndex,
                );
              })),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: size.height * 0.20,
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        height: 12,
                        width: 24,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: pageIndex == index
                                ? AppColor.prColor
                                : AppColor.textColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: size.width - 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.prColor,
                      ),
                      onPressed: pageIndex == 2
                          ? () {
                              Get.to(
                                 LoginPage(),
                                transition: Transition.fade,
                                duration: const Duration(seconds: 1),
                              );
                            }
                          : () {
                              pageController.nextPage(
                                  duration: const Duration(milliseconds: 600),
                                  curve: Curves.easeIn);
                            },
                      child: Text(
                        pageIndex == 2 ? 'Proceed' : 'Next',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (pageIndex != 2)
            Positioned(
              top: 50,
              right: 30,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.prColor,
                ),
                onPressed: () {
                  Get.to(
                     LoginPage(),
                    transition: Transition.fade,
                    duration: const Duration(seconds: 1),
                  );
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
