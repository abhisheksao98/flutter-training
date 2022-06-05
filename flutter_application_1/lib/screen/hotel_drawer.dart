import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/hotel_widget.dart';

import 'create_drawer.dart';

class Hoteldrawer extends StatelessWidget {
  static const String routeName = '/hotel';
  const Hoteldrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HotelDrawer'),
      ),
      body: const hotelWidget(),
      drawer: createDrawer(),
    );
  }
}
