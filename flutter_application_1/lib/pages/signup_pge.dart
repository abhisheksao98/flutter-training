import 'package:flutter/material.dart';
import 'package:flutter_application_1/db/userlogin_DB.dart';
import 'package:flutter_application_1/pages/dairy_screen2.dart';
import 'package:flutter_application_1/pages/diary_screen.dart';
import 'package:flutter_application_1/services/user_login.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  var unamecontroller = TextEditingController();
  var pswdcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Sign up',
          ),
          centerTitle: true,
        ),
        // body: SingleChildScrollView(
        //     scrollDirection: Axis.vertical,
        body: ListView(children: [
          Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    'https://m.economictimes.com/thumb/msid-58821557,width-1200,height-900,resizemode-4,imgsize-50651/five-diaries-that-gave-an-insight-into-the-era-of-a-personality.jpg',
                  ),
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  colorFilter:
                      ColorFilter.mode(Colors.black, BlendMode.softLight),
                ),
              ),
              child: Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 200, left: 60),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                          controller: unamecontroller,
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              hintText: 'Enter Username',
                              labelText: 'Username',
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 2.0),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                          controller: pswdcontroller,
                          obscureText: true,
                          decoration: const InputDecoration(
                              icon: Icon(
                                Icons.key,
                                color: Colors.white,
                              ),
                              hintText: 'Enter Password',
                              labelText: 'Password',
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 2.0),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white)),
                    ),
                    SizedBox(
                      height: 25.0,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Center(
                            child: ElevatedButton(
                          onPressed: () async {
                            var username = unamecontroller.text;
                            var password = pswdcontroller.text;
                            var user =
                                User(userName: username, password: password);
                            var result =
                                await UserDatabase1.instance.registerUser(user);
                            if (result) {
                              Navigator.pop(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => diaryScreen()));
                            }
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black),
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blueGrey),
                        ))),
                    SizedBox(
                      height: 150,
                    )
                  ]))),
        ]));
  }
}
