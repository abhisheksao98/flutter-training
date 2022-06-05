import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_managemnet.dart/ephiral_state_demo/my_counter_class.dart';
import 'package:flutter_application_1/state_managemnet.dart/ephiral_state_demo/widget1_AppState.dart';

//import 'package:flutter_application_1/state_managemnet.dart/my_counter%20_class.dart';
//

import 'widget2_appstate.dart';
import 'widget3_appstate.dart';

class LimitationsOfSetStateDemo extends StatefulWidget {
  const LimitationsOfSetStateDemo({Key? key}) : super(key: key);

  @override
  State<LimitationsOfSetStateDemo> createState() =>
      _LimitationsOfSetStateDemoState();
}

class _LimitationsOfSetStateDemoState extends State<LimitationsOfSetStateDemo> {
  var mycounter = Mycounter(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Limitations of setState method'),
      ),
      body: Column(
        children: [
          const Widget1(),
          const Divider(
            thickness: 10.0,
          ),
          widget2(mycounter: mycounter),
          const Divider(
            thickness: 10.0,
          ),
          widget3(mycounter: mycounter)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            mycounter.increaseCount();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
