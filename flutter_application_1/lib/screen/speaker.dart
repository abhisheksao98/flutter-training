import 'package:flutter/material.dart';
import 'package:flutter_application_1/models.dart/Speaker.dart';
import 'package:flutter_application_1/screen/showspeakerdetail.dart';
import 'package:flutter_application_1/services/speakerdetails.dart';

class speaker extends StatelessWidget {
  const speaker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final speaker = SpeakerService().getSpeakers();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Show Content'),
        ),
        body: ListView.builder(
            itemCount: speaker.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 10.0,
                  color: Colors.lightBlue,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(speaker[index].imageUrl),
                    ),
                    title: Text(speaker[index].topic),
                    subtitle: Text(speaker[index].speakerName),
                    trailing: const Icon(
                      Icons.chevron_right,
                    ),
                    onTap: () {
                      var speakers = speaker[index];
                      Navigator.pushNamed(context, showdetail.routeName,
                          arguments: speaker);
                    },
                  ),
                ),
              );
            }));
  }
}
