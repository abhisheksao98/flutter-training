import 'package:brave_quiz/constants.dart';

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class QuestionWiget extends StatelessWidget {
  const QuestionWiget({
    Key? key,
    required this.question,
  }) : super(key: key);
  final String question;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      alignment: Alignment.centerLeft,
      child: Text(
        ' $question',
        style: GoogleFonts.robotoSerif(
          textStyle: TextStyle(
              fontSize: 20, color: textColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class QuestionWord extends StatelessWidget {
  const QuestionWord({
    Key? key,
    required this.totalQuestion,
    required this.index,
  }) : super(key: key);
  final int totalQuestion;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        child: Text('Question ${index + 1}/$totalQuestion',
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 40)));
  }
}
