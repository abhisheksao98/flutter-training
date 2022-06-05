import 'dart:convert';

import 'package:brave_quiz/db/questions_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

class ScienceDbconnect {
  final url = Uri.parse(
      'https://brave-quiz-321-default-rtdb.firebaseio.com/science.json');
  Future<void> addQuestion(Question questions) async {
    http.post(url,
        body: json
            .encode({'title': questions.title, 'options': questions.options}));
  }

  Future<List<Question>> sciencefetchQuestions() async {
    return http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            title: value['title'],
            options: Map.castFrom(value['options']));
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class EnglishDbconnect {
  final url = Uri.parse(
      'https://brave-quiz-321-default-rtdb.firebaseio.com/english.json');
  Future<void> addQuestion(Question questions) async {
    http.post(url,
        body: json
            .encode({'title': questions.title, 'options': questions.options}));
  }

  Future<List<Question>> englishfetchQuestions() async {
    return http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            title: value['title'],
            options: Map.castFrom(value['options']));
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class KnowledgeDbconnect {
  final url = Uri.parse(
      'https://brave-quiz-321-default-rtdb.firebaseio.com/knowledge.json');
  Future<void> addQuestion(Question questions) async {
    http.post(url,
        body: json
            .encode({'title': questions.title, 'options': questions.options}));
  }

  Future<List<Question>> knowfetchQuestions() async {
    return http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            title: value['title'],
            options: Map.castFrom(value['options']));
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class MathsDbconnect {
  final url = Uri.parse(
      'https://brave-quiz-321-default-rtdb.firebaseio.com/maths.json');
  Future<void> addQuestion(Question questions) async {
    http.post(url,
        body: json
            .encode({'title': questions.title, 'options': questions.options}));
  }

  Future<List<Question>> mathsfetchQuestions() async {
    return http.get(url).then((response) {
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Question> newQuestions = [];
      data.forEach((key, value) {
        var newQuestion = Question(
            id: key,
            title: value['title'],
            options: Map.castFrom(value['options']));
        newQuestions.add(newQuestion);
      });
      return newQuestions;
    });
  }
}

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<String> getCurrentUID() async {
    return (_firebaseAuth.currentUser!).uid;
  }

  Future getCurrentUser() async {
    return await _firebaseAuth.currentUser!;
  }
}
