import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/Speaker.dart';

class showdetail extends StatelessWidget {
  static const routeName = '/speaker';
  const showdetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Speaker speaker =
        ModalRoute.of(context)!.settings.arguments as Speaker;
    return Scaffold(
        appBar: AppBar(
          title: Text('Speaker Detaails'),
        ),
        body: SizedBox(
            width: 200,
            height: 200,
            child: Card(
                elevation: 20,
                color: Colors.purple,
                child: Column(children: [
                  // Center(child: Image(image: speaker.imageUrl)),
                  Center(child: Text(speaker.speakerName)),
                  Center(child: Text(speaker.emailId)),
                  Center(child: Text(speaker.mobileNo)),
                  Center(child: Text(speaker.topic)),
                  Center(child: Text(speaker.shortDescription)),
                ]))));
  }
}
