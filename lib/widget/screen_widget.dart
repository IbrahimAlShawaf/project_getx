import 'package:flutter/material.dart';

import 'app_text.dart';
import 'appcolor.dart';

class ScreenWidget extends StatelessWidget {
  final int index;
  const ScreenWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          // flex: 3,
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColor.bgColor,
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(80),
              ),
            ),
            child: Image.asset(
              'assets/images/$index.png',
              width: 250,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          // flex: 3,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Text(titles[0]),
                      TextWidget(
                        text: titles[index],
                        color: AppColor.titleColor,
                        size: 24,
                        fontWeight: FontWeight.bold,
                        textalign: TextAlign.center,
                      ),

                      Text(
                        about[index],
                        style: TextStyle(
                          color: AppColor.subtitleColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
