import 'package:flutter/material.dart';

import 'create_drawer.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Booking app')),
        body: Container(
          color: Colors.teal,
          child: Center(
            child: Text(
              'Welcom you are in home screen',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
        ),
        drawer: createDrawer());
  }
}
