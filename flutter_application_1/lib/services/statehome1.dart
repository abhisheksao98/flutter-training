import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/painting.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/screen/Stateui.dart';
// ignore: unused_import
//import 'package:google_fonts/google_fonts.dart';

class loginpage2 extends StatefulWidget {
  const loginpage2({Key? key}) : super(key: key);

  @override
  State<loginpage2> createState() => _loginpage2State();
}

class _loginpage2State extends State<loginpage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://thumbs.dreamstime.com/b/india-marked-flag-map-india-marked-flag-map-137555601.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: const Text(
                  'Welcome to our App',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => stateui()));
                  },
                  child: const Text(
                    'Lets Get Started',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
