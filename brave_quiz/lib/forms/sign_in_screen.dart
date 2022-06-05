import 'package:brave_quiz/forms/authentication_service_controllers.dart';

import 'package:brave_quiz/homescreen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../page_background_color.dart';

import '../started_screen/Started_screen/default_button2.dart';
import 'register_screen.dart';

class SignInPage extends StatefulWidget {
  static const String routeName = '/signin';
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  AuthenticationServiceController controller =
      Get.put(AuthenticationServiceController());

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: containerForPageBackgroundChangeColor(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Form(
                key: formkey, //key for form
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: height * 0.02),
                    const Text(
                      'BRAVE QUIZ',
                      style: TextStyle(
                        fontSize: 33,
                        color: Colors.white,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    const Text(
                      'Welcome back',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        letterSpacing: 2.0,
                      ),
                    ),
                    const Text(
                      'Plased to Stay here',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                        letterSpacing: 1.5,
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    TextFormField(
                      style: const TextStyle(color: Colors.white),
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        hintText: 'Type your email',
                        suffixIcon: const Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$')
                                .hasMatch(value)) {
                          return 'Type always correct email';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: height * 0.06),
                    TextFormField(
                      style: TextStyle(color: Colors.white),
                      obscureText: true,
                      controller: passwordController,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        hintText: 'Type your passowrd',
                        suffixIcon: Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\&*-]).{8,}$')
                                .hasMatch(value)) {
                          return 'Wrong passowrd';
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: (() {}),
                            child: const Text('Reset Password'))
                      ],
                    ),
                    SizedBox(height: height * 0.08),
                    DefaultButton(
                      text: 'Sign In',
                      press: signInMethod,
                    ),
                    SizedBox(height: height * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't have an account ? ",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        TextButton(
                          onPressed: (() {
                            Get.to(() => const RegisterPage());
                          }),
                          child: const Text(
                            'Register',
                          ),
                        ),
                      ],
                    ),
                    //signinbutton()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void signInMethod() async {
    if (formkey.currentState!.validate()) {
      var status = await controller.validateUser(
          emailController.text, passwordController.text);
      if (status == 'true') {
        Get.to(() => const SubjectList());
      } else {
        var get = Get;
        get.snackbar('Error', status);
      }
    }
  }
}
