import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:quiz_app/authentication_service_controller.dart';
import 'package:quiz_app/welcome_demo.dart';

class LoginDemo extends StatefulWidget {
  const LoginDemo({Key? key}) : super(key: key);

  @override
  State<LoginDemo> createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  final AuthenticationController controller =
      Get.put(AuthenticationController());
  final _FormKey = GlobalKey<FormState>();

  var email = '';
  var password = '';
  final emailcontroller = TextEditingController();
  final pswdcontroller = TextEditingController();

  @override
  void dispose() {
    emailcontroller.dispose();
    pswdcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
          key: _FormKey,
          child: Column(
            children: [
              TextFormField(
                controller: emailcontroller,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Email',
                  filled: true,
                ),
                validator: (value) {
                  if (value == '' || value == null) {
                    return 'Enter Email';
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: pswdcontroller,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Password',
                  filled: true,
                ),
                validator: (value) {
                  if (value == '' || value == null) {
                    return 'Enter Password';
                  }
                },
              ),
              const SizedBox(
                height: 40,
              ),
              Row(children: [
                ElevatedButton(
                    onPressed: () async {
                      if (_FormKey.currentState!.validate()) {
                        var z = await controller.Signin(
                            emailcontroller.text, pswdcontroller.text);
                        if (z == true) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => welcomeScreen()));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.redAccent,
                              content: Text('$z')));
                        }
                      }
                    },
                    child: Text('Login')),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (_FormKey.currentState!.validate()) {
                        dynamic z = await controller.registeruser(
                            emailcontroller.text, pswdcontroller.text);
                        if (z == 'true') {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => welcomeScreen()));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.redAccent,
                              content: Text('$z')));
                        }
                      }
                    },
                    child: Text('Register')),
              ])
            ],
          )),
    ));
  }
}
