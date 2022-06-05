import 'package:flutter/material.dart';
import 'package:flutter_application_2/style_const/utilisconstrant.dart';

class roundedicon extends StatelessWidget {
  final IconData icondata;
  final VoidCallback onPressed;
  const roundedicon({Key? key ,required this.icondata,
  required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(width: 50.0,height: 50.0),
      shape: const CircleBorder(),
      fillColor: kRoundedIconButtonColor,
      child: Icon(icondata)
      
    );
  }
}
