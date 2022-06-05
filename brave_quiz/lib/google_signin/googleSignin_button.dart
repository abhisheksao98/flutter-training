import 'package:brave_quiz/homescreen/homescreen.dart';

import 'package:flutter/material.dart';

import 'package:google_sign_in/google_sign_in.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  // Optional clientId
  // clientId: '479882132969-9i9aqik3jfjd7qhci1nqf0bm2g71rm1u.apps.googleusercontent.com',
  scopes: <String>[
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

class signinbutton extends StatefulWidget {
  const signinbutton({Key? key}) : super(key: key);

  @override
  State<signinbutton> createState() => _signinbuttonState();
}

class _signinbuttonState extends State<signinbutton> {
  GoogleSignInAccount? _currentUser;
  String _contactText = '';

  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
      setState(() {
        _currentUser = account;
      });
      // if (_currentUser != null) {
      //   _handleGetContact(_currentUser!);
      // }
    });
    _googleSignIn.signInSilently();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 100,
        child: ElevatedButton(
            //OutlinedButton.icon(
            // icon: FaIcon(FontAwesomeIcons.google),
            onPressed: () async {
              try {
                await _googleSignIn.signIn();
              } catch (error) {
                print(error);
              }
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SubjectList()));
            },
            child: Text(
              'sign in google',
              style: const TextStyle(
                  color: Colors.amber, fontWeight: FontWeight.bold),
            ),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.blueGrey),
            )));
  }

  Future<void> _handleSignOut() => _googleSignIn.disconnect();

  // Widget BuildContext() {
  //   final GoogleSignInAccount? user = _currentUser;
  //   ElevatedButton(onPressed: _handleSignOut, child: Text('logout'));
  // }
}
