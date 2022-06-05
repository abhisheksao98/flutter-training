import 'package:flutter/material.dart';

class Listview1 extends StatelessWidget {
  const Listview1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview'),
      ),
      body: ListView(children: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Card(
            elevation: 10.0,
            child: ListTile(
              title: Text('.net by me'),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Card(
            elevation: 10.0,
            child: ListTile(
              title: Text('.net by me'),
            ),
          ),
        ),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              elevation: 10.0,
              child: ListTile(
                title: Text('.net by me'),
              ),
            )),
        ListTile(
          title: Text('.net by me'),
        ),
        ListTile(
          title: Text('.net by me'),
        ),
        ListTile(
          title: Text('.net by me'),
        ),
        ListTile(
          title: Text('.net by me'),
        ),
        ListTile(
          title: Text('.net by me'),
        ),
        ListTile(
          title: Text('.net by me'),
        ),
      ]),
    );
  }
}
