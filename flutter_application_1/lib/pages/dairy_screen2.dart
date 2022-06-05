import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/diary_screen.dart';
import 'package:flutter_application_1/pages/diary_screen3.dart';
import 'package:flutter_application_1/services/user_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:path/path.dart';

class dairyscreen2 extends StatefulWidget {
  const dairyscreen2({Key? key}) : super(key: key);

  @override
  State<dairyscreen2> createState() => _dairyscreen2State();
}

class _dairyscreen2State extends State<dairyscreen2> {
  int? count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(FontAwesomeIcons.book),
        title: const Text('Welcome.'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => diaryScreen())));
              },
              icon: Icon(FontAwesomeIcons.doorOpen))
        ],
      ),
      body: getlistView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: ((context) => diaryscreen3())));
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  ListView getlistView() {
    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int position) {
          return Card(
            color: Colors.white,
            elevation: 10,
            child: ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Icon(Icons.keyboard_arrow_right),
              ),
              title: Text('Dummy Style'),
              subtitle: Text('dummy date'),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => diaryscreen3())));
              },
            ),
          );
        });
  }
}
