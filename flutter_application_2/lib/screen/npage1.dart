import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/napge2.dart';
//import 'package:flutter_application_2/screen/npage2.dart';

class npage1 extends StatelessWidget {
  const npage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(Icons.home),
        title: const Text('Home'),
      ),
      body: Container(
        color: Color.fromARGB(255, 24, 3, 32),
        child: const Center(
          child: Text(
            'Welcome to page 1',
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () async {
          var navigationresult = await Navigator.push(
              context, MaterialPageRoute(builder: (context) => const npage2()));
          if (navigationresult != null) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text('Result'),
                content: Text('Data Received $navigationresult'),
              ),
            );
          } else {
            showDialog(
                context: context,
                builder: (context) => const AlertDialog(
                      title: Text('you press back button'),
                    ));
          }
        },
        child: const Text('Continue'),
      ),
    );
  }
}
