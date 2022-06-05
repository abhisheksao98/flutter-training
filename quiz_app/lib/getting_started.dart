import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GettingStrated extends StatefulWidget {
  const GettingStrated({Key? key}) : super(key: key);

  @override
  State<GettingStrated> createState() => _GettingStratedState();
}

class _GettingStratedState extends State<GettingStrated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Stack(
        children: [
          Image.network(
              'https://c8.alamy.com/comp/R0AT2Y/torn-blue-paper-revealing-question-mark-on-yellow-paper-concept-of-questions-faq-qa-problem-riddle-and-quiz-background-R0AT2Y.jpg',
              fit: BoxFit.fitHeight,
              height: MediaQuery.of(context).size.height * 1.1
              // width: MediaQuery.of(context).size.width,
              ),
          Padding(
            padding: const EdgeInsets.only(top: 145),
            child: Center(
              child: Image.network(
                  'https://www.pngmart.com/files/19/Vector-Quiz-Transparent-PNG.png'),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 600, left: 60),
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
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
