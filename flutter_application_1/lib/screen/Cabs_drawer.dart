import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/cabs_widget.dart';

import 'create_drawer.dart';

class cabsdrawer extends StatelessWidget {
  static const String routeName = '/cabs';
  const cabsdrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cabs'),
      ),
      body: cabsWiget(),
      drawer: createDrawer(),
    );
  }
}
