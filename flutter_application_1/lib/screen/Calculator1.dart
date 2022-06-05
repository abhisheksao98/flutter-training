// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/row.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.calculate),
          title: const Text('Calculator'),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.black,
                    height: 80,
                    width: 80,
                    child: const Center(
                      child: Text(
                        '1',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
                Widget Calculatorwf('2')

              ],
            )
          ],
        ));
  }
}
 Widget Calculatorwf (String Text){
   Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.black,
                    height: 80,
                    width: 80,
                    child: const Center(
                      child: const Text(
                        '$text')
                      //   style: TextStyle(
                      //       color: Colors.white, fontWeight: FontWeight.bold),
                      // ),
                    ),
                  ),
                );

}