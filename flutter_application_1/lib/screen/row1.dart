import 'package:flutter/material.dart';

class rowDemo extends StatefulWidget {
  const rowDemo({Key? key}) : super(key: key);

  @override
  State<rowDemo> createState() => _rowDemoState();
}

class _rowDemoState extends State<rowDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.supervised_user_circle),
        title: const Text('Row Demo'),
      ),
      body: Container(
        color: Colors.yellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.blueAccent,
              child: const Text(
                'Blue',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
              width: 20.0,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: const Text(
                'Red',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
              width: 20.0,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.purple,
              child: const Text(
                'purple',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
