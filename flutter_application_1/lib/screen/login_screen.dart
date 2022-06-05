import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _uname = '';
  String _pswd = '';
  String _message = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: ListView(
        children: [
          Image.network(''),
          Padding(
          padding: const EdgeInsets.all(10.0),
          child:TextField(
            keyboardType :TextInputType.text,
            decoration : InputDecoration(
              labelText : 'Username',
              hintText : 'Enter your Username',
             icon: const Icon(Icons.person),
             Border : OutlineInputBorder(
               borderRadius : BorderRadius.circular(8.0),
             ),
            ),
            onChanged: (value)=>_uname=value,
          ),
          ),
          Padding(padding: const EdgeInsets.all(10.0),
          child: TextField(
            obscureText:true,
            keyboardType : TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter your Password',
            icon: const Icon(Icons.lock),
            border: OutlineInputBorder(
              borderRadius:BorderRadius.circular(6.0)
            )
            ),
            onChanged: (value)=>_pswd = value,
          ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed : () {
                setState(() {
                  _message='Username $_uname Password $_pswd';
                });
              },
              child : const Text('Clear'),
              ),
            ],
          ),
          const SizedBox(height: 10.0,)
          Center(
          child: Text(
              _message,
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
          ),
          )
        ],
      ),

    );
  }
}
