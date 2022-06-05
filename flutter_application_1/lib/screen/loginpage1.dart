import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController unameController = TextEditingController();
  TextEditingController pswdController = TextEditingController();

  String _message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.login),
        title: const Text('Login'),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              controller: unameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Username',
                hintText: 'Enter your username',
                icon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              controller: pswdController,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your Password',
                icon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    var name = unameController.text;
                    var psrd = pswdController.text;
                    _message = 'Username $name\nPaseord $psrd';
                  });
                },
                child: const Text('lOGIN'),
              ),
              const SizedBox(
                width: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    unameController.text = pswdController.text = _message = '';
                  });
                },
                child: const Text('Clear'),
              )
            ],
          ),
          const SizedBox(height: 10.0),
          Center(
            child: Text(
              _message,
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
