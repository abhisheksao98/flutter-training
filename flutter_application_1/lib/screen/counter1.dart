import 'package:flutter/material.dart';

class Counter1 extends StatefulWidget {
  const Counter1({Key? key}) : super(key: key);

  @override
  State<Counter1> createState() => _Counter1State();
}

class _Counter1State extends State<Counter1> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.calculate),
          title: const Text('Counter App')),
      body: Container(
        color: Colors.blueGrey,
        child: Center(
          child: Text(
            'You have press $counter times',
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlue,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        FloatingActionButton(
            onPressed: () {
              setState(() {
                counter--;
              });
            },
            child: const Icon(Icons.remove)),
        const SizedBox(width: 10.0),
        FloatingActionButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: const Icon(Icons.add)),
      ]),
    );
  }
}
