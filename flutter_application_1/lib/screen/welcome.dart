import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.pink,
          Colors.red,
        ]),
      ),
      child: const Text.rich(
        TextSpan(text: 'Flutter', style: TextStyle(fontSize: 30.0), children: [
          TextSpan(
            text: 'Rocks',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue,
            ),
          ),
          TextSpan(
            text: '--Sad',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ]),
      ),
    );
  }
}
