import 'package:flutter/material.dart';

class flightWidget extends StatelessWidget {
  const flightWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.yellow,
            child: const Center(
              child: Text(
                'Flight page',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            )),
      ],
    );
  }
}
