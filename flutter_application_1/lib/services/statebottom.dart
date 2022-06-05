import 'package:flutter/material.dart';

class BottomButton1 extends StatelessWidget {
  final String buttonText;
  final VoidCallback onTap;
  const BottomButton1({Key? key, required this.buttonText, required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
        ),
        color: Colors.white60,
        height: 100.0,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10.0),
      ),
      onTap: () {},
    );
  }
}
