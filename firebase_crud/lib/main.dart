import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crud/diplay_user_detail.dart';
import 'package:firebase_crud/firebase_options.dart';
import 'package:firebase_crud/get_user_information.dart';
import 'package:firebase_crud/homepage.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}
