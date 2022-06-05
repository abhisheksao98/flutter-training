import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_demo/add_user.dart';
import 'package:firebase_demo/firebase_options.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FireBase Demo'),
        ),
        body: const AddUser(
            UserName: 'Abhishek',
            Password: 'aman121',
            emailId: 'abhisheksao98@gmail.com'),
      ),
    );
  }
}
