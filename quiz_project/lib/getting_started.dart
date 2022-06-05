import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class GettingStarted extends StatefulWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  State<GettingStarted> createState() => _GettingStartedState();
}

class _GettingStartedState extends State<GettingStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(children: [
          Image.network(
            'https://thumbs.dreamstime.com/b/education-frame-pupil-s-stationery-clock-textbook-wooden-background-top-view-copy-space-student-desk-156520254.jpg',
            fit: BoxFit.cover,
            color: Color.fromARGB(136, 255, 255, 255),
            colorBlendMode: BlendMode.modulate,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          // Padding(
          //   padding: const EdgeInsets.only(
          //     top: 200,
          //   ),

          // Image.network(
          //   'https://www.pngmart.com/files/19/Vector-Quiz-Transparent-PNG.png',
          Image.asset(
            'images/quiz.png',
            height: MediaQuery.of(context).size.height * 0.65,
          ),

          Positioned(
              top: MediaQuery.of(context).size.height * 0.5,
              left: 75,
              child: Text(
                  'Its Going to be Hard \nbut hard does not mean\n IMPOSSIBLE ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.robotoMono(
                    textStyle: const TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 20,
                        color: Colors.black),
                  ))),

          Positioned(
              top: MediaQuery.of(context).size.height * 0.85,
              left: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  padding: EdgeInsets.all(10),
                  fixedSize: Size(300, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                child: const Text(
                  'Getting Started',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ))
        ]),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   crossAxisAlignment: CrossAxisAlignment.end,
        //   children: [
      ),
    );
  }
}
