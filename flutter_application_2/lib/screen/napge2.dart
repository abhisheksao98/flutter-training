import 'package:flutter/material.dart';

class npage2 extends StatelessWidget {
  const npage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page 2'),
      ),
      body: Container(
        color: Colors.black87,
        child: const Center(
          child: Text(
            'Welcome to page 2',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30.0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context, 'Result of page 2');
        },
        child: const Text('back'),
      ),
    );
  }
}
