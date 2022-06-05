import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../widget/cabs_widget.dart';
import '../widget/flight_widget.dart';
import '../widget/hotel_widget.dart';

class newnavbar1 extends StatefulWidget {
  const newnavbar1({Key? key}) : super(key: key);

  @override
  State<newnavbar1> createState() => _newnavbar1State();
}

class _newnavbar1State extends State<newnavbar1> {
  static int _currentindex = 0;

  final tab_widget = [
    const hotelWidget(),
    const flightWidget(),
    const cabsWiget(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking App'),
      ),
      body: tab_widget[_currentindex],
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentindex,
        showElevation: true,
        itemCornerRadius: 24,
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(icon: Icon(Icons.hotel), title: Text('hotel')),
          BottomNavyBarItem(icon: Icon(Icons.flight), title: Text('Flight')),
          BottomNavyBarItem(
              icon: Icon(Icons.car_rental),
              title: Text('Cabs')), //title: Text('Hotel')),
        ],
        onItemSelected: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
