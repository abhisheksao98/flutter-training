import 'package:flutter_application_1/state_managemnet.dart/Scoped_model_state.dart/my_counter.dart';
import 'package:scoped_model/scoped_model.dart';
//import 'package:flutter_application_1/state_managemnet.dart/inherited_State_demo.dart/my_counter.dart';

class CounterModel extends Model {
  //Properties
  MyCounter myCounter = MyCounter(0);
  int get counter => myCounter.counter;
  //Events /Action
  void add() {
    myCounter.increaseCount();
    notifyListeners();
  }
}
