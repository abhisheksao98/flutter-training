import 'package:flutter/material.dart';

class cabsWiget extends StatelessWidget {
  const cabsWiget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.green,
            child: const Center(
              child: Text(
                'Cab Page',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            )),
      ],
    );
  }
}
