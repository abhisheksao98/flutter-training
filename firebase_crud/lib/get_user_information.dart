import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_crud/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class GetUserInformation extends StatefulWidget {
  const GetUserInformation({Key? key}) : super(key: key);

  @override
  State<GetUserInformation> createState() => _GetUserInformationState();
}

class _GetUserInformationState extends State<GetUserInformation> {
  final Stream<QuerySnapshot> _userStream =
      FirebaseFirestore.instance.collection('users').snapshots();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _userStream,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text('Error while processing the request...');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text('Loading the data...');
        }

        return ListView(
          children: snapshot.data!.docs.map((document) {
            Map<String, dynamic> data =
                document.data()! as Map<String, dynamic>;
            return ListTile(
              title: Text(data['UserName']),
              subtitle: Text(data['emailId']),
            );
          }).toList(),
        );
      },
    );
  }
}
