import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 50,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Colors.blueAccent,
                Colors.blue
                //add more colors
              ],
            ),
            borderRadius: BorderRadius.circular(5),
            // boxShadow: const <BoxShadow>[
            //   BoxShadow(
            //       color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
            //       blurRadius: 5) //blur radius of shadow
            // ],
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              onSurface: Colors.transparent,
              shadowColor: Colors.transparent,
              //make color or elevated button transparent
            ),
            onPressed: press,
            child: Text(text),
          ),
        )

        //ElevatedButton(
        //   onPressed: press,
        //   child: Text(text),
        //   style: ElevatedButton.styleFrom(

        //   ),
        // ),
        );
  }
}
