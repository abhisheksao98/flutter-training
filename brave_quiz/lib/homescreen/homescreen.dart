import 'package:brave_quiz/constants.dart';
import 'package:brave_quiz/db/Maths_displayScreen.dart';
import 'package:brave_quiz/db/Sciencedisplay_screen.dart';
import 'package:brave_quiz/db/Englishdisplayscreen.dart';
import 'package:brave_quiz/db/knowldege_displayscreen.dart';
import 'package:brave_quiz/forms/authentication_service_controllers.dart';

import 'package:brave_quiz/homescreen/categories_service.dart';
import 'package:brave_quiz/homescreen/drawers/drawer_main.dart';
import 'package:brave_quiz/homescreen/homescreen_widget.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:google_fonts/google_fonts.dart';

class SubjectList extends StatefulWidget {
  static const String routeName = '/subjectlist';

  const SubjectList({Key? key}) : super(key: key);

  @override
  State<SubjectList> createState() => _SubjectListState();
}

class _SubjectListState extends State<SubjectList> {
  final subjects = CategoriesService().getCategories();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    AuthenticationServiceController controller =
        Get.put(AuthenticationServiceController());

    return Scaffold(
      appBar: AppBar(
          title: Text(
            '${controller.currentUserData.email}',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: backgroundorange),
      drawer: const DrawersNav(),
      body: Stack(children: [
        Container(
          color: homecream,
          height: height,
        ),
        Container(
          height: height / 4,
          decoration: const BoxDecoration(
            color: pink,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: height / 2.5,
            child: Image.asset(
              'images/banner1edit.jpg',
            ),
          ),
        ),
        Positioned(
          top: height / 2.7,
          left: 30,
          child: Text(
            'Quiz Categories',
            style: GoogleFonts.robotoSerif(
                textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
          ),
        ),
        Container(
          height: height,
          padding: EdgeInsets.only(top: height / 2.4),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              // crossAxisSpacing: 1.0,
              // mainAxisSpacing: 1.0,
            ),
            itemCount: subjects.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  child: SubjectCard(
                // onpress: () {},
                onpress: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => _pageByIndex(index),
                  ),
                ),

                image: subjects[index].imageurl,
                subjectTitle: subjects[index].name,
              ));
              // );
            },
          ),
        ),
      ]),
    );
  }

  Widget _pageByIndex(int index) {
    switch (index) {
      case 0:
        {
          return const displayScreen();
        }
      case 1:
        {
          return const englishdisplay();
        }
      case 2:
        {
          return const knowledgedisplay();
        }
      case 3:
        {
          return const mathsdisplay();
        }
    }
    throw Exception('index wrong');
  }
}
