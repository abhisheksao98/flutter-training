import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/loginscreen_dairy.dart';
import 'package:flutter_application_1/pages/usersaved.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: DairyScreenl1(onFormSaved: (user user) {
          print(user.username);
        }));
  }
}
