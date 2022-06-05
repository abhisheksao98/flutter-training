import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_managemnet.dart/Scoped_model_state.dart/counter_model.dart';
import 'package:scoped_model/scoped_model.dart';

class Widget3 extends StatelessWidget {
  const Widget3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterModel>(
      builder: ((context, child, model) => Text(
            'Widget 3 ${model.counter}',
            style: TextStyle(fontSize: 20.0),
          )),
    );
  }
}
