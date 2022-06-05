import 'package:flutter/material.dart';

import 'my_counter_class.dart';

class widget3 extends StatelessWidget {
  final Mycounter mycounter;
  const widget3({Key? key, required this.mycounter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'Widget 3 : ${mycounter.counter}',
        style: TextStyle(fontSize: 30.0),
      ),
      widget3(
        mycounter: mycounter,
      )
    ]);
  }
}
