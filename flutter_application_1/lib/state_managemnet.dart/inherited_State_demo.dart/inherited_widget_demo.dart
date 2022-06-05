import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_managemnet.dart/ephiral_state_demo/widget1_AppState.dart';
import 'package:flutter_application_1/state_managemnet.dart/inherited_State_demo.dart/counter_inherited_widget.dart';
import 'package:flutter_application_1/state_managemnet.dart/inherited_State_demo.dart/my_counter.dart';
import 'package:flutter_application_1/state_managemnet.dart/inherited_State_demo.dart/widget_2.dart';
import 'package:flutter_application_1/state_managemnet.dart/inherited_State_demo.dart/widget_3.dart';

class Inheritedapp extends StatefulWidget {
  const Inheritedapp({Key? key}) : super(key: key);

  @override
  State<Inheritedapp> createState() => _InheritedappState();
}

class _InheritedappState extends State<Inheritedapp> {
  var myCounter = MyCounter(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inherited APP'),
      ),
      body: CounterInheritedWidget(
          myCounter: myCounter,
          childWidget: Column(
            children: [
              Widget1(),
              Divider(
                thickness: 20.0,
              ),
              Widget2(),
              Divider(
                thickness: 20.0,
              ),
              Widget3(),
              Divider(
                thickness: 20.0,
              )
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            myCounter.increaseCount();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
