import 'package:get/get.dart';

class Totalquestion extends GetxController {
  int _totalques = 0;
  get totalques => _totalques;
  void addquestionlength(int add) {
    _totalques = add;
    update();
  }
}
