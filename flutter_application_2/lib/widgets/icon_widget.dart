import 'package:flutter/material.dart';
import 'package:flutter_application_2/style_const/utilisconstrant.dart';
class  iconControl extends StatelessWidget {
  final IconData icondata;
  final String text;
  const iconControl({ Key? key ,required this.icondata,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Icon(icondata,size: 80.0,color:kIconBackgroundColor,),
           const SizedBox(height:10.0)
      ],
      
    );
  }
}
