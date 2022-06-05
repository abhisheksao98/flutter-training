import 'package:flutter/material.dart';

class cardcontrol extends StatelessWidget {
  final Color bgcolor;
  final Widget childcard;
  final VoidCallback onPress;
  const cardcontrol({Key? key,required this.bgcolor,
  required this.childcard,
  required this.onPress,}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child:childcard,
      margin:const EdgeInsets.all(15.0),
      decoration: BoxDecoration(color: bgcolor),
    ),
    );
  }
}
