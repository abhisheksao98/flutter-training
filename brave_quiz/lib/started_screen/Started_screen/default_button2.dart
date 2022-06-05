import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
    this.height = 50,
    this.width = double.infinity,
    this.fontSize = 20.0,
  }) : super(key: key);
  final String text;
  final VoidCallback press;
  final double height;
  final double width;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xff052072),
                Color(0xFF0ECFFF)
                //add more colors
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                onSurface: Colors.transparent,
                shadowColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))
                //make color or elevated button transparent
                ),
            onPressed: press,
            child: Text(
              text,
              style: TextStyle(
                  fontSize: fontSize,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ));
  }
}
