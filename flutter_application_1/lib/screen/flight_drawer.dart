import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/flight_widget.dart';

import 'create_drawer.dart';

class Flightdrawer extends StatelessWidget {
  static const String routeName = '/Flight';
  const Flightdrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FLight'),
      ),
      body: flightWidget(),
      drawer: createDrawer(),
    );
  }
}
