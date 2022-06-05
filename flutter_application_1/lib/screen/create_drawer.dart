import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/Cabs_drawer.dart';
import 'package:flutter_application_1/screen/flight_drawer.dart';
import 'package:flutter_application_1/screen/fragment_drawer.dart';
import 'package:flutter_application_1/screen/hotel_drawer.dart';

class createDrawer extends StatelessWidget {
  const createDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            child: const Center(
              child: Text(
                'Booking App',
                style: TextStyle(fontSize: 20.0, color: Colors.amber),
              ),
            ),
            decoration: BoxDecoration(color: Colors.pink),
          ),
          ListTile(
            leading: const Icon(Icons.hotel),
            title: const Text('Hotel Bookings'),
            onTap: () {
              Navigator.of(context).pushNamed(Hoteldrawer.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.flight),
            title: const Text('Flight Bookings'),
            onTap: () {
              Navigator.of(context).pushNamed(Flightdrawer.routeName);
            },
          ),
          ListTile(
            leading: const Icon(Icons.directions_car),
            title: const Text('Cabs Bookings'),
            onTap: () {
              Navigator.of(context).pushNamed(cabsdrawer.routeName);
            },
          ),
        ],
      ),
    );
  }
}
