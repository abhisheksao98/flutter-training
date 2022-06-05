import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OptionCard extends StatelessWidget {
  const OptionCard({
    Key? key,
    required this.option,
    required this.color,
    //required this.onTap
  }) : super(key: key);
  final String option;
  //final VoidCallback onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              50.0, // Change your border radius here
            ),
          ),
          //  tileColor: Colors.blueGrey,
          title: Text(
            option,
            textAlign: TextAlign.start,
            style: GoogleFonts.robotoSerif(
              textStyle: TextStyle(
                fontSize: 20,
                color: color.red != color.green ? Colors.white : Colors.blue,
              ),
            ),
          )),
    );
  }
}
