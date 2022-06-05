import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/cabs_widget.dart';
import 'package:flutter_application_1/widget/flight_widget.dart';
import 'package:flutter_application_1/widget/hotel_widget.dart';

class navbarbutton extends StatefulWidget {
  const navbarbutton({Key? key}) : super(key: key);

  @override
  State<navbarbutton> createState() => _navbarbuttonState();
}

class _navbarbuttonState extends State<navbarbutton> {
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentindex,
        selectedFontSize: 24,
        unselectedFontSize: 14,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.hotel), label: 'Hotel'),
          BottomNavigationBarItem(icon: Icon(Icons.flight), label: 'Flight'),
          BottomNavigationBarItem(icon: Icon(Icons.car_rental), label: 'Cabs')
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
