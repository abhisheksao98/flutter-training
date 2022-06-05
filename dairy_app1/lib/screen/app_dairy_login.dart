import 'package:dairy_app1/model/login_model.dart';
import 'package:dairy_app1/screen/dairy_screen2.dart';
import 'package:flutter/material.dart';

import '../database/login_db.dart';

class AppDairyMainScreen extends StatefulWidget {
  const AppDairyMainScreen({Key? key}) : super(key: key);

  @override
  State<AppDairyMainScreen> createState() => _AppDairyMainScreenState();
}

class _AppDairyMainScreenState extends State<AppDairyMainScreen> {
  var unameController = TextEditingController();
  var passwdController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Personal Dairy'),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              const Expanded(
                child: Text('User name :'),
              ),
              Expanded(
                child: TextField(
                  controller: unameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'User name',
                    hintText: 'Enter User name',
                    icon: const Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              const Expanded(
                child: Text('Password :'),
              ),
              Expanded(
                child: TextField(
                  controller: passwdController,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Password',
                    icon: const Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () async {
              var username = unameController.text;
              var password = passwdController.text;
              var result = await AppDairyDatabase.instance
                  .validateUser(username, password);
              if (result) {
                //Code to Naviagte for Success page
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => dairyscreen2( ) ));
              } else {
                //Raise an alert or Toast message
              }
            },
            child: const Text('Login'),
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              const Expanded(
                child: Text('New Users ?'),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () async {
                    var username = unameController.text;
                    var password = passwdController.text;
                    var appUser =
                        AppUser(userName: username, password: password);
                    var result =
                        await AppDairyDatabase.instance.registerUser(appUser);
                    if (result) {
                      //Code to Naviagte for Success page
                    } else {
                      //Raise an alert or Toast message
                    }
                  },
                  child: const Text('Register'),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
