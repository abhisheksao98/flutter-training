//import 'package:dairy_app1/screen/app_dairy_login.dart';
import 'package:dairy_app1/screen/loginscreen_dairy.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DairyScreenl1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
