import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddUser extends StatelessWidget {
  final String UserName;
  final String Password;
  final String emailId;

  const AddUser(
      {super.key,
      required this.UserName,
      required this.Password,
      required this.emailId});

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    Future<void> adduser() {
      return users
          .add({
            'userName': UserName,
            'Password': Password,
            'EmailId': emailId,
          })
          .then(
            (value) => debugPrint('USer Added'),
          )
          .catchError((onError) => debugPrint('Failed to create $onError'));
    }

    return Center(
      child: ElevatedButton(
        child: Text('Add New USer'),
        onPressed: () {
          adduser();
        },
      ),
    );
  }
}
