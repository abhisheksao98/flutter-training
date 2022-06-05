import 'package:brave_quiz/homescreen/drawers/drawer_main.dart';
import 'package:brave_quiz/page_background_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../../started_screen/Started_screen/default_button2.dart';

class UserProfileScreen extends StatefulWidget {
  static const String routeName = '/userprofilescreen';
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return containerForPageBackgroundChangeColor(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: const DrawersNav(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('Your Profile'),
        ),
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const UserImage(),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    // controller: emailController,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      labelText: ' Display name',
                      hintText: 'Display name',
                      suffixIcon: Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Type always correct email';
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    // controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: ' Update Your Email',
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
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    // controller: mobileController,
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
                ),
                const SizedBox(
                  height: 50,
                ),
                DefaultButton(text: 'Update', press: () {})
              ]),
        ),
      ),
    );
  }
}

class UserImage extends StatelessWidget {
  const UserImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: SizedBox(
          height: 115,
          width: 115,
          child: Stack(
            fit: StackFit.expand,
            clipBehavior: Clip.none,
            children: [
              const CircleAvatar(
                  // backgroundImage: NetworkImage(
                  //     'https://w7.pngwing.com/pngs/841/727/png-transparent-computer-icons-user-profile-synonyms-and-antonyms-android-android-computer-wallpaper-monochrome-sphere.png'),
                  ),
              Positioned(
                bottom: 0,
                right: -2,
                child: GestureDetector(
                  onTap: (() {}),
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      border: Border.all(width: 5.0, color: Colors.red),
                      shape: BoxShape.circle,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 0.2,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.edit,
                      color: Color(0xFF1F4099),
                      size: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
