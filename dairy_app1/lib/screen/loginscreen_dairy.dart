//import 'package:dairy_app1/database/login_db.dart';
import 'package:dairy_app1/database/login_db.dart';
//import 'package:dairy_app1/database/userlogin_DB.dart';
import 'package:dairy_app1/model/login_model.dart';
import 'package:dairy_app1/screen/dairy_screen2.dart';
import 'package:flutter/material.dart';

class DairyScreenl1 extends StatefulWidget {
  const DairyScreenl1({Key? key}) : super(key: key);

  @override
  State<DairyScreenl1> createState() => _DairyScreenl1State();
}

class _DairyScreenl1State extends State<DairyScreenl1> {
  var unamecontroller = TextEditingController();
  var psswdcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  static int? count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.notes),
        title: const Text(
          'Login',
        ),
        centerTitle: true,
      ),
      // body: SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      body: ListView(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://m.economictimes.com/thumb/msid-58821557,width-1200,height-900,resizemode-4,imgsize-50651/five-diaries-that-gave-an-insight-into-the-era-of-a-personality.jpg',
              ),
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.softLight),
            ),
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 200, left: 60),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // const Padding(
                //   padding: EdgeInsets.all(8.0),
                //   child:

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      controller: unamecontroller,
                      validator: (username) =>
                          username != null && username.isEmpty
                              ? 'Title cannot be empty'
                              : null,
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
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      obscureText: true,
                      controller: psswdcontroller,
                      validator: (password) =>
                          password != null && password.isEmpty
                              ? 'Password cannot be empty'
                              : null,
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
                    child: TextButton(
                      onPressed: () async {
                        var username = unamecontroller.text;
                        var password = psswdcontroller.text;
                        var result = await AppDairyDatabase.instance
                            .validateUser(username, password);
                        if (result) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => dairyscreen2())));
                        } else {}
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.blueGrey),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    const Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Does Not Have Any Account?',
                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 90,
                    ),
                    TextButton(
                      onPressed: () async {
                        var username = unamecontroller.text;
                        var password = psswdcontroller.text;
                        var user =
                            AppUser(userName: username, password: password);
                        var result =
                            await AppDairyDatabase.instance.registerUser(user);
                        if (result) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => dairyscreen2()));
                          // Navigator.pop(context);
                        } else {}
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (_) => signup()));
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      style: TextButton.styleFrom(backgroundColor: Colors.lime),
                    ),
                  ],
                ),
                SizedBox(height: 400.0)
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
