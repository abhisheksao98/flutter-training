import 'package:brave_quiz/forms/sign_in_screen.dart';
import 'package:brave_quiz/page_background_color.dart';
import 'package:brave_quiz/started_screen/Started_screen/default_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'slide_image_content.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentPage = 0;

  List<Map<String, String>> data = [
    {
      "text": "Practice like you've won\nPerform like you never lost",
      "image": "images/brave2.png",
    },
    {
      "text": "Learn with Us",
      "image": "images/brave3.png",
    },
    {
      "text": "Now You are Ready to Go",
      "image": "images/brave1.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return containerForPageBackgroundChangeColor(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                // Spacer(),
                Expanded(
                  flex: 3,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: data.length,
                    itemBuilder: (context, index) => SlideImageContent(
                      text: data[index]["text"]!,
                      image: data[index]["image"]!,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            data.length,
                            (index) => buildStartedPageDot(index),
                          ),
                        ),
                        const Spacer(flex: 3),
                        DefaultButton(
                          press: () {
                            Get.to(() => const SignInPage());
                          },
                          text: ' Get Started',
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container buildStartedPageDot(int index) {
    return Container(
      margin: const EdgeInsets.only(right: 5.0),
      height: 8,
      width: currentPage == index ? 20 : 8,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.red : const Color(0xffD8D8DB),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
