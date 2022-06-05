
import 'dart:io';

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var num = 2;
  var num1 = 5;
  var sum = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.calculate),
          title: const Text('Calculator'),
        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'enter any number',
                    hintText: 'Enter number',
                    
                  ),
                ),
              
            ),
                onChanged: (value) => num = value,
              ],
              

             
            ElevatedButton(
              onPressed: () {
                setState(() {
                  var sum = ('sum of $num and $num1 is ${num + num1}');
                });
              },
              child: const Text(
                ' +',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            const SizedBox(
              height: 20.0,
              width: 50.0,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  var sum = ('subtraction of $num and $num1 is ${num - num1}');
                });
              },
              child: const Text(
                ' -',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  var sum = ('Multiply of $num and $num1 is ${num * num1}');
                });
              },
              child: const Text(
                ' *',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  var sum = ('Divison of $num and $num1 is ${num / num1}');
                });
              },
              child: const Text(
                ' /',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            Center(
              child: Text(
                sum,
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ));
  }
}
