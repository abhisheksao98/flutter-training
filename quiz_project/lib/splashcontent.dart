import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        // Padding(
        //   padding: const EdgeInsets.only(top: 40),
        Text(
          'Brave Quiz',
          style: GoogleFonts.robotoSerif(
            textStyle: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
              color: Color(0xff252d75),
            ),
          ),
        ),
        // ),
        Text(
          text,
          style: TextStyle(color: Color(0xff252d75), fontSize: 15),
        ),
        const Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          // height: 100,
          // width: 100,
        ),

        //  SizedBox(height: 40,),
        Expanded(flex: 2, child: Text('Double')),

        Expanded(
          flex: 1,
          child: Text('Double'),
        ),
      ],
    );
  }
}
