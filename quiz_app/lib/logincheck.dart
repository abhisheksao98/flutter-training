import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/welcome_demo.dart';

class AppDairyMainScreen extends StatefulWidget {
  const AppDairyMainScreen({Key? key}) : super(key: key);

  @override
  State<AppDairyMainScreen> createState() => _AppDairyMainScreenState();
}

class _AppDairyMainScreenState extends State<AppDairyMainScreen> {
  final _formKey = GlobalKey<FormState>();
  var email = '';
  var password = '';
  final EmailController = TextEditingController();
  final passwdController = TextEditingController();

  @override
  void dispose() {
    EmailController.dispose();
    passwdController.dispose();
    super.dispose();
  }

  // register() async {
  //   try {
  //     await FirebaseAuth.instance
  //         .createUserWithEmailAndPassword(email: email, password: password);
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'weak-password') {
  //       print('The password provided is too weak.');
  //     } else if (e.code == 'email-already-in-use') {
  //       print('The account already exists for that email.');
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  // Login() async {
  //   try {
  //     await FirebaseAuth.instance
  //         .signInWithEmailAndPassword(email: email, password: password);
  //     Navigator.push(
  //         context, MaterialPageRoute(builder: (context) => welcomeScreen()));
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'user-not-found') {
  //       print('No user found for that email.');
  //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //         backgroundColor: Colors.redAccent,
  //         content: Text('No user Found'),
  //       ));
  //     } else if (e.code == 'wrong-password') {
  //       print('Wrong password provided for that user.');
  //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //         backgroundColor: Colors.redAccent,
  //         content: Text('Wrong Password'),
  //       ));
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Personal Dairy'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Row(
              children: [
                const Expanded(
                  child: Text('User name :'),
                ),
                Expanded(
                  child: TextFormField(
                    controller: EmailController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'EmailID',
                      hintText: 'Enter Email',
                      icon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value == '') {
                        return 'Please Enter Email';
                      }
                    },
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
                  child: TextFormField(
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
                      validator: (value) {
                        if (value == null || value == '') {
                          return 'Please Enter Password';
                        }
                      }),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  setState(() {
                    email = EmailController.text;
                    password = passwdController.text;
                  });
                  // Login();
                }
              },
              child: const Text('Sign in'),
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
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          email = EmailController.text;
                          password = passwdController.text;
                        });
                        // register();
                      }
                    },
                    child: const Text('Register'),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
