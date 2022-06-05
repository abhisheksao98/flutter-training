import 'package:brave_quiz/db/db_connect.dart';
import 'package:brave_quiz/db/resultScreen.dart';

import 'package:brave_quiz/firebase_options.dart';
import 'package:brave_quiz/forms/authentication_service_controllers.dart';
import 'package:brave_quiz/forms/sign_in_screen.dart';
import 'package:brave_quiz/forms/theme.dart';
import 'package:brave_quiz/homescreen/drawers/fregments/user_profile.dart';

import 'package:brave_quiz/homescreen/homescreen.dart';
import 'package:brave_quiz/started_screen/Started_screen/started_page.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'db/questions_model.dart';

void main() async {
  var dbScience = ScienceDbconnect();
  var eng = EnglishDbconnect();
  var know = KnowledgeDbconnect();
  var maths = MathsDbconnect();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  AuthenticationServiceController user =
      Get.put(AuthenticationServiceController());

  dbScience.addQuestion(Question(
      id: '1',
      title: 'In which of the following activities silicon carbide is used?',
      options: {
        'Making cement and glass': false,
        'Disinfecting water of ponds': false,
        'cutting very hard substances': true,
        'Making casts for statues': false,
      }));
  // math.mathsfetchQuestions();
  runApp(GetMaterialApp(theme: themeData(), home: Root()));
}

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthenticationServiceController user =
        Get.put(AuthenticationServiceController());
    if (user.authService.currentUserData == null) {
      return const MyApp();
    } else {
      return const SubjectList();
    }
  }
}
