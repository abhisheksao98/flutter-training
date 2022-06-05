import 'package:brave_quiz/constants.dart';
import 'package:brave_quiz/db/db_connect.dart';

import 'package:brave_quiz/db/next_button.dart';
import 'package:brave_quiz/db/option_card.dart';
import 'package:brave_quiz/db/question_widget.dart';
import 'package:brave_quiz/db/questions_model.dart';
import 'package:brave_quiz/db/resultScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slide_countdown/slide_countdown.dart';

import '../started_screen/Started_screen/default_button2.dart';
import '../statemanagement/getx_here/controllers/result/result_controller.dart';
import '../statemanagement/totalquestion_get.dart';

class displayScreen extends StatefulWidget {
  const displayScreen({Key? key}) : super(key: key);

  @override
  State<displayScreen> createState() => _displayScreenState();
}

class _displayScreenState extends State<displayScreen> {
  var science = ScienceDbconnect();

  late Future _questions;
  Future<List<Question>> getData() async {
    return science.sciencefetchQuestions();
  }

  ResultController result = Get.put(ResultController());
  @override
  void initState() {
    _questions = getData();
    super.initState();
  }

  int index = 0;
  int score = 0;
  bool isPressed = false;
  void skip(int questionLength) {
    if (index == questionLength - 1) {
      return;
    } else {
      if (isPressed) {
        setState(() {
          index++;
          isPressed = false;
        });
      }
    }
  }

  bool isalreadtSelected = false;
  void nextQuestion(int questionLength) {
    if (index == questionLength - 1) {
      return;
    } else {
      if (isPressed) {
        setState(() {
          index++;
          isPressed = false;
          isalreadtSelected = false;
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Please Select any option'),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.symmetric(vertical: 10),
        ));
      }
    }
  }

  void changecolor() {
    setState(() {
      isPressed = true;
    });
  }

  void checkanswer(bool value) {
    if (isalreadtSelected) {
      return;
    } else {
      if (value == true) {
        result.scorecollecter(1);
      }
      setState(() {
        isPressed = true;
        isalreadtSelected = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Totalquestion totalque = Get.put(Totalquestion());
    return FutureBuilder(
        future: _questions as Future<List<Question>>,
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(
                child: Text('${snapshot.error}'),
              );
            } else if (snapshot.hasData) {
              var extractedData = snapshot.data as List<Question>;
              totalque.addquestionlength(extractedData.length);
              return Scaffold(
                body: Stack(children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'images/quizbg.jpg',
                          ),
                          fit: BoxFit.cover),
                    ),
                    height: MediaQuery.of(context).size.height * 2,
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height * 0.14,
                      left: MediaQuery.of(context).size.width * 0.08,
                      child: Text(
                        'Score : ${result.score}',
                        style: GoogleFonts.robotoSerif(
                            textStyle: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold)),
                      )),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.2,
                    left: 35,
                    right: 35,
                    child: QuestionWord(
                      totalQuestion: extractedData.length,
                      index: index,
                    ),
                  ),
                  const Divider(
                    height: 450,
                    color: pink,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 250, left: 20, right: 20),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                      height: MediaQuery.of(context).size.height / 1.7,
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: QuestionWiget(
                            question: extractedData[index].title,
                          ),
                        ),
                        const Divider(
                          height: 20,
                          color: pink,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        for (int i = 0;
                            i < extractedData[index].options.length;
                            i++)
                          Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: GestureDetector(
                              onTap: () => checkanswer(extractedData[index]
                                  .options
                                  .values
                                  .toList()[i]),
                              child: GestureDetector(
                                onTap: () => checkanswer(extractedData[index]
                                    .options
                                    .values
                                    .toList()[i]),
                                child: OptionCard(
                                  option: extractedData[index]
                                      .options
                                      .keys
                                      .toList()[i],
                                  color: isPressed
                                      ? extractedData[index]
                                                  .options
                                                  .values
                                                  .toList()[i] ==
                                              true
                                          ? Colors.green
                                          : Colors.red
                                      : Colors.white,
                                ),
                              ),
                            ),
                          )
                      ]),
                    ),
                  ),
                ]),
                floatingActionButton: index == extractedData.length - 1
                    ? Padding(
                        padding: EdgeInsets.all(8.0),
                        child: DefaultButton(
                          height: 50,
                          width: 120,
                          text: 'Result',
                          press: () => Get.to(
                            () => ResultScreen(),
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () => nextQuestion(extractedData.length),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: NextButton(
                              // nextQuestion: nextQuestion,
                              ),
                        ),
                      ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.endFloat,
              );
            }
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return const Center(
            child: Text('No data'),
          );
        });
  }
}
