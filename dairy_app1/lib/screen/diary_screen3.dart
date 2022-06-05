import 'package:dairy_app1/database/login_db.dart';
import 'package:dairy_app1/model/diary.dart';
import 'package:flutter/material.dart';
//import 'package:path/path.dart';

class diaryscreen3 extends StatefulWidget {
  const diaryscreen3({Key? key}) : super(key: key);

  @override
  State<diaryscreen3> createState() => _diaryscreen3State();
}

class _diaryscreen3State extends State<diaryscreen3> {
  final _formKey = GlobalKey<FormState>();
  var datecontroller = TextEditingController();
  var eventcontroller = TextEditingController();
  var descontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diary App'),
      ),
      body: ListView(
        key: _formKey,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: datecontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Enter Date',
                    labelText: 'Date',
                    fillColor: Colors.greenAccent,
                    filled: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: eventcontroller,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'title',
                    labelText: 'Event Tile ',
                    fillColor: Colors.greenAccent,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: descontroller,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 100),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: 'Description',
                    labelText: 'Description ',
                    fillColor: Colors.greenAccent,
                    filled: true,
                    helperMaxLines: 7,
                    hintMaxLines: 4,
                  ),
                ),
              ),
              TextButton(onPressed: () {}, child: const Text('Save'))
            ],
          ),
        ],
      ),
    );
  }
}
