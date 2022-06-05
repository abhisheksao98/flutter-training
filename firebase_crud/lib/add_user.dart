import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddUser extends StatelessWidget {
  final String UserName;
  final String Password;
  final String emailId;

  const AddUser(
      {Key? key,
      required this.UserName,
      required this.Password,
      required this.emailId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    Future<void> adduser() {
      return users
          .add({
            'UserName': UserName,
            'Password': Password,
            'emailId': emailId,
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

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';

// class AddUser extends StatelessWidget {
//   final String userName;
//   final String password;
//   final String emailId;

//   const AddUser({
//     Key? key,
//     required this.userName,
//     required this.password,
//     required this.emailId,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     CollectionReference users = FirebaseFirestore.instance.collection('users');

//     Future<void> addUser() {
//       return users
//           .add({
//             'userName': userName,
//             'password': password,
//             'emailId': emailId,
//           })
//           .then(
//             (value) => debugPrint('User Added....'),
//           )
//           .catchError(
//             (onError) => debugPrint('Failed to create a new user : $onError'),
//           );
//     }

//     return Center(
//       child: ElevatedButton(
//         child: const Text('Add New User'),
//         onPressed: () {
//           addUser();
//         },
//       ),
//     );
//   }
// }
