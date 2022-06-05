import 'package:brave_quiz/constants.dart';
import 'package:brave_quiz/forms/sign_in_screen.dart';
import 'package:brave_quiz/page_background_color.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../started_screen/Started_screen/default_button2.dart';
import 'authentication_service_controllers.dart';

class RegisterPage extends StatefulWidget {
  static const String routeName = '/register';
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<RegisterPage> {
  //controller of GetX
  AuthenticationServiceController controller =
      Get.put(AuthenticationServiceController());

  var emailController = TextEditingController();
  var mobileController = TextEditingController();
  var passwordController = TextEditingController();
  var confpassrdController = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    mobileController.dispose();
    passwordController.dispose();
    confpassrdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;

    return containerForPageBackgroundChangeColor(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Form(
              key: formkey, //key for form
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: height * 0.07),
                  Text(
                    'Brave Quiz',
                    style: GoogleFonts.robotoSerif(
                      textStyle: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  const Center(
                    child: Text(
                      ' Connect with us',
                      style: TextStyle(
                          fontSize: 20,
                          // color: Color.fromARGB(255, 2, 31, 82),
                          color: buttonBlue,
                          letterSpacing: 2.0),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.07,
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'type your email',
                      suffixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$')
                              .hasMatch(value)) {
                        return 'type always correct email';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: height * 0.05),
                  TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: mobileController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      labelText: 'Enter Mobile No',
                      hintText: 'Enter Mobile No',
                      suffixIcon: Icon(
                        Icons.phone_android,
                        color: Colors.white,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s./0-9]')
                              .hasMatch(value)) {
                        return 'Enter correct mobile number';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: height * 0.05),
                  TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'type your passowrd',
                      suffixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\&*-]).{8,}$')
                              .hasMatch(value)) {
                        return '';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: height * 0.05),
                  TextFormField(
                    obscureText: true,
                    controller: confpassrdController,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      hintText: 'type your passowrd',
                      suffixIcon: Icon(
                        Icons.confirmation_num,
                        color: Colors.white,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty ||
                          !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\&*-]).{8,}$')
                              .hasMatch(value)) {
                        return '1. type always password correct way\n2. passward lenght must be 8 character\n3. password must contains a-z, A-Z, 0-9, @#%^';
                      } else if (confpassrdController.text !=
                          passwordController.text) {
                        return "Password does't match";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: height * 0.05),
                  DefaultButton(
                    text: 'Sign Up',
                    press: registerUserMethod,
                  ),
                  SizedBox(height: height * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already a member ?",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      TextButton(
                        onPressed: (() {
                          Get.to(() => SignInPage());
                        }),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void registerUserMethod() async {
    if (formkey.currentState!.validate()) {
      var status = await controller.registerUser(
          emailAddress: emailController.text,
          mobile: mobileController.text,
          password: passwordController.text);
      if (status == 'true') {
        // Get.snackbar('Congratulations', 'You are Registered Successfully');
        Get.to(() => const SignInPage());
      } else {
        Get.snackbar('Error', status);
      }
    }
  }
}
