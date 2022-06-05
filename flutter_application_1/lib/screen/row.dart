import 'package:flutter/material.dart';

class row extends StatefulWidget {
  const row({Key? key}) : super(key: key);

  @override
  State<row> createState() => _rowState();
}

class _rowState extends State<row> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row widget'),
      ),
      body: Container(
        color: Colors.black,
        child: Row(children: [
          Container(
            color: Colors.yellow,
            height: 100.0,
            width: 100.0,
            child: const Center(
              child: Text(
                'Yellow',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            color: Colors.red,
            height: 100.0,
            width: 100.0,
            child: const Center(
                child: Text(
              'Red',
              style: TextStyle(color: Colors.white),
            )),
          ),
          Container(
              color: Colors.green,
              height: 100.0,
              width: 100.0,
              child: const Center(
                  child: Text(
                'green',
                style: TextStyle(color: Colors.white),
              )))
        ]),
      ),
    );
  }
}
