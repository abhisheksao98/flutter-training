import 'package:flutter/material.dart';
import 'package:flutter_application_2/style_const/utilisconstrant.dart';

class Bottombutton extends StatelessWidget {
  final String buttonText;
  final VoidCallback ontap;
  const Bottombutton({Key? key ,required this.buttonText, required this.ontap})
   : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    child: Container(
        child: Center(
          child: Text(buttonText, style: kLargeText),
        ),
        color: kbottomContainercolor,
        height: kbottomContainerheight,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 10.0),
      ),
      onTap: ontap
    );
  }
}
