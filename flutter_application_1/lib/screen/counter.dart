import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.countertops),
        title: const Text('Counter App'),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Text('You have clicked $counter  times',
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue,
              )),
        ),
      ),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        FloatingActionButton(
          onPressed: () {
            setState(
              () {
                counter++;
              },
            );
          },
          child: const Icon(Icons.add),
        ),
        const SizedBox(
          height: 300.0,
        ),
        FloatingActionButton(
          onPressed: () {
            setState(
              () {
                counter--;
              },
            );
          },
          child: const Icon(Icons.remove),
        ),
      ]),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.pink,
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 50.0,
        ),
      ),
    );
  }
}
