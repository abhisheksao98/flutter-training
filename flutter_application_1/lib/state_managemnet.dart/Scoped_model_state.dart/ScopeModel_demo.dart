import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_managemnet.dart/Scoped_model_state.dart/counter_model.dart';
import 'package:flutter_application_1/state_managemnet.dart/Scoped_model_state.dart/my_counter.dart';
import 'package:flutter_application_1/state_managemnet.dart/Scoped_model_state.dart/widget_1.dart';
import 'package:flutter_application_1/state_managemnet.dart/Scoped_model_state.dart/widget_2.dart';
import 'package:flutter_application_1/state_managemnet.dart/Scoped_model_state.dart/widget_3.dart';

import 'package:scoped_model/scoped_model.dart';

class ScopeModeldemo extends StatefulWidget {
  const ScopeModeldemo({Key? key}) : super(key: key);

  @override
  State<ScopeModeldemo> createState() => _ScopeModeldemoState();
}

class _ScopeModeldemoState extends State<ScopeModeldemo> {
  var myCounter = MyCounter(0);
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: CounterModel(),
      child: Scaffold(
          appBar: AppBar(
            title: Text('ScopedModel APP'),
          ),
          body: Column(
            children: const [
              Widget1(),
              Divider(
                thickness: 20,
              ),
              Widget2(),
              Divider(
                thickness: 20.0,
              ),
              Widget3(),
            ],
          ),
          floatingActionButton: ScopedModelDescendant<CounterModel>(
              builder: ((context, child, model) => FloatingActionButton(
                    onPressed: () {
                      model.add();
                    },
                    child: const Icon(Icons.add),
                  )))),
    );
  }
}
