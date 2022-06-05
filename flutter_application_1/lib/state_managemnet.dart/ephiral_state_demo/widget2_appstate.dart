import 'package:flutter/material.dart';
//import 'package:flutter_application_1/state_managemnet.dart/widget3_appstate.dart';

import 'my_counter_class.dart';
import 'widget3_appstate.dart';

class widget2 extends StatelessWidget {
  final Mycounter mycounter;
  const widget2({Key? key, required this.mycounter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'Widget 2',
        style: TextStyle(fontSize: 30.0),
      ),
      widget3(
        mycounter: mycounter,
      ),
    ]);
  }
}
