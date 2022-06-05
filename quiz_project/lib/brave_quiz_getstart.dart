import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_project/splashcontent.dart';

class getStart extends StatefulWidget {
  const getStart({Key? key}) : super(key: key);

  @override
  State<getStart> createState() => _getStartState();
}

class _getStartState extends State<getStart> {
  List<Map<dynamic, dynamic?>> splashData = [
    {
      "text": "Hard but not Impossible",
      "image": "images/quiz.png",
    },
    {
      "text": "Hard but not Impossible",
      "image": "images/quiz2.jpg",
    },
    {
      "text": "Hard but not Impossible",
      "image": "images/quiz2.jpg",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f8ff),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: PageView.builder(
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    image: splashData[index]["image"],
                    text: splashData[index]["text"],
                  ),
                ),
              ),
              Expanded(flex: 2, child: SizedBox())
            ],
          ),
        ),
      ),
    );
  }
}
