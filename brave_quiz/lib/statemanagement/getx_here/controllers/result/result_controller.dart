import 'package:get/get.dart';

class ResultController extends GetxController {
  int _score = 0;
  get score => _score;

  void scorecollecter(int points) {
    _score += points;
    update();
  }

  void scorezero(int zero) {
    _score = 0;
  }
}

class IndexController extends GetxController {
  int index = 0;
  get indexs => index;

  void getindex(int questions) {
    index += questions;
    update();
  }
}
