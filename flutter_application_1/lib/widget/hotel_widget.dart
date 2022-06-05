import 'package:flutter/material.dart';

class hotelWidget extends StatelessWidget {
  const hotelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Hotel page',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            )),
      ],
    );
  }
}
