import 'package:brave_quiz/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 40,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(210, 110, 200, 241),
                Color.fromARGB(103, 248, 9, 9)
                //add more colors
              ],
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Next Question',
              textAlign: TextAlign.center,
              style: GoogleFonts.robotoFlex(
                  textStyle: const TextStyle(
                      fontSize: 20,
                      color: backgrounddarkblue,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        ));
  }
}
