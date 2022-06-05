import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_managemnet.dart/inherited_State_demo.dart/counter_inherited_widget.dart';
import 'package:flutter_application_1/state_managemnet.dart/inherited_State_demo.dart/my_counter.dart';

class Widget3 extends StatelessWidget {
  const Widget3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MyCounter myCounter = CounterInheritedWidget.of(context)!.myCounter;
    return Text(
      'Widget3 : ${myCounter.counter}',
      style: TextStyle(fontSize: 30.0),
    );
  }
}
