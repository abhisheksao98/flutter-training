import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class column1 extends StatefulWidget {
  const column1({Key? key}) : super(key: key);

  @override
  State<column1> createState() => _column1State();
}

class _column1State extends State<column1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column Demo'),
      ),
      body: Container(
        width: 500,
        color: Colors.black,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: const Text(
                  'Reed',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: const Text(
                  'Blue',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.pink,
                child: const Text(
                  'Pink',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ]),
      ),
    );
  }
}
