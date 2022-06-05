// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/user_info.dart';
import 'package:flutter_application_2/screen/user_detail.dart';

// ignore: camel_case_types
class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => registerState();
}

class registerState extends State<register> {
  var unameController = TextEditingController();
  var pswdController = TextEditingController();
  var emailController = TextEditingController();
  var mnoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.app_registration),
        title: const Text('Register'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              createTextField(unameController, 'User Name'),
              createTextField(pswdController, 'Password', isSecured: true),
              createTextField(mnoController, 'Mobile No',
                  keyboard: TextInputType.phone),
              createTextField(emailController, 'Email',
                  keyboard: TextInputType.emailAddress),
              ElevatedButton(
                  onPressed: () {
                    _onregister();
                  },
                  child: const Text('Register'))
            ],
          )),
    );
  }

  TextField createTextField(
      TextEditingController editingController, String text,
      {TextInputType keyboard = TextInputType.text, bool isSecured = false}) {
    return TextField(
      controller: editingController,
      obscureText: false,
      decoration: InputDecoration(
        labelText: text,
        hintText: 'Enter $text',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
      ),
      keyboardType: TextInputType.text,
    );
  }

  void _onregister() {
    String uname = unameController.text;
    String pswd = pswdController.text;
    String mobino = mnoController.text;
    String email = emailController.text;
    Navigator.pushNamed(context, userdetail.routename,
        arguments: userinfo(uname, pswd, email, mobino));
  }
}
