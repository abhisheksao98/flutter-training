import 'package:brave_quiz/homescreen/homescreen.dart';

import 'package:brave_quiz/statemanagement/getx_here/controllers/result/result_controller.dart';
import 'package:brave_quiz/statemanagement/totalquestion_get.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

import '../started_screen/Started_screen/default_button2.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResultController controller = Get.put(ResultController());
    Totalquestion totalquestion = Get.put(Totalquestion());

    var height = MediaQuery.of(context).size.height;
    int score = controller.score;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF102037),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Text("Quiz Result",
                    style: GoogleFonts.robotoSerif(
                      textStyle: const TextStyle(
                          letterSpacing: 2.5,
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: score > totalquestion.totalques / 2
                            ? const NetworkImage(
                                'https://media.istockphoto.com/vectors/gold-cup-trophy-winner-isolated-on-blue-background-vector-id530002180?k=20&m=530002180&s=170667a&w=0&h=3kIaGVuqaVW8k5S1jLASJNHSNGNHNyvrAiiAXIE1ML0=')
                            : const NetworkImage(
                                'https://pngimage.net/wp-content/uploads/2018/06/oops-png-3.png'))),
                height: 300,
                width: 300,
              ),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: score > totalquestion.totalques / 2
                      ? Text(
                          'Congratulations',
                          style: GoogleFonts.robotoFlex(
                            textStyle: const TextStyle(
                                letterSpacing: 5,
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      : Text(
                          'Try Again',
                          style: GoogleFonts.robotoFlex(
                            textStyle: const TextStyle(
                                letterSpacing: 5,
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
              Container(
                  padding: const EdgeInsets.all(8.0),
                  child: score > totalquestion.totalques / 2
                      ? Text(
                          'You Will Never Regret Being Brave',
                          style: GoogleFonts.robotoFlex(
                            textStyle: const TextStyle(
                                letterSpacing: 3,
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      : Text(
                          'You are so close to the victory \ndont you dare Give Up now',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.robotoFlex(
                            textStyle: const TextStyle(
                                letterSpacing: 3,
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "Your Score",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "${controller.score}/ ${totalquestion.totalques}",
                  style:
                      const TextStyle(color: Color(0xFFEBF2F7), fontSize: 25),
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
              ),
              DefaultButton(
                  text: 'New Quiz',
                  width: 200,
                  press: () {
                    controller.scorezero(0);
                    Get.to(() => const SubjectList());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
