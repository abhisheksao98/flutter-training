import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/page2.dart';
import 'package:flutter_application_2/style_const/utilisconstrant.dart';

class page1 extends StatelessWidget {
  const page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(leading: const Icon(Icons.home), title: const Text('Home')),
        body: const Center(
          child: Text(
            'Welcome to page 1',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.large(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            child: const Text('Continue')));
  }
}
