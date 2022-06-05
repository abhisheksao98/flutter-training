import 'package:brave_quiz/constants.dart';
import 'package:flutter/material.dart';

class SlideImageContent extends StatelessWidget {
  const SlideImageContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            'BRAVE QUIZ',
            style: TextStyle(
              fontSize: 38,
              letterSpacing: 1.3,
              fontWeight: FontWeight.w600,
              foreground: Paint()
                ..shader = const LinearGradient(colors: <Color>[
                  buttonBlue,
                  Colors.yellow,
                  Colors.green
                ]).createShader(const Rect.fromLTWH(0, 0, 400, 0)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Text(text,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 20)),
        ),
        const Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: 240,
        )
      ],
    );
  }
}
