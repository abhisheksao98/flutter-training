import 'package:flutter/material.dart';
import 'package:shared_preference/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _unameController = TextEditingController();
  var _passwdController = TextEditingController();

  bool? _rememberMe = false;
  bool? _keeploggedin = false;
  SharedPreferences? logindata;
  bool? newuser;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.always,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _unameController,
                    decoration: InputDecoration(
                      labelText: 'User name',
                      hintText: 'User name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'User name cant be blank';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    controller: _passwdController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password cant be blank';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Checkbox(
                        value: _rememberMe,
                        onChanged: (value) {
                          setState(() {
                            _rememberMe = value;
                          });
                        },
                      ),
                      const SizedBox(width: 8.0),
                      const Text('Remember Me'),
                      // Checkbox(
                      //   value: _keeploggedin,
                      //   onChanged: (value) {
                      //     setState(() {
                      //       _keeploggedin = value;
                      //     });
                      //   },
                      // ),
                      // const SizedBox(width: 8.0),
                      // const Text('keep logged in')
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate() && _rememberMe!) {
                          SharedPreferences myPrefs =
                              await SharedPreferences.getInstance();

                          myPrefs.setString('uname', _unameController.text);
                          myPrefs.setString('passwd', _passwdController.text);
                        }

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WelcomePage(
                                    name: _unameController.text,
                                    password: _passwdController.text,
                                  )),
                        );
                      },
                      child: const Text('Login'),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
