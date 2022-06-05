import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../model/notes.dart';

final _bgcolors = [
  Colors.amber.shade300,
  Colors.red.shade200,
  Colors.lightBlue.shade200,
  Colors.amber.shade200,
  Colors.pinkAccent.shade200,
];

class noteCard extends StatelessWidget {
  final Note note;
  final int index;
  const noteCard({Key? key, required this.note, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bgcolor = _bgcolors[index % _bgcolors.length];
    final minHeight = getMinHeight(index);
    final time = DateFormat.yMMMMd().format(note.createdTime);
    return Card(
      color: bgcolor,
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              time,
              style: TextStyle(color: Colors.teal),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              note.title,
              style: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          ],
        ),
      ),
    );
  }

  double getMinHeight(int index) {
    switch (index % 4) {
      case 0:
        return 100;
      case 1:
        return 100;
      case 2:
        return 150;
      case 3:
        return 70;
      default:
        return 100;
    }
  }
}
