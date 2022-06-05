import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

// class AddNewUser extends StatefulWidget {
//   const AddNewUser({Key? key}) : super(key: key);

//   @override
//   State<AddNewUser> createState() => _AddNewUserState();
// }

// class _AddNewUserState extends State<AddNewUser> {
//   final _formKey = GlobalKey<FormState>();
//   final unameController = TextEditingController();
//   final pswdController = TextEditingController();
//   final emailController = TextEditingController();

//   @override
//   void dispose() {
//     unameController.dispose();
//     pswdController.dispose();
//     emailController.dispose();
//   }

//   var UserName = '';
//   var Password = '';
//   var emailId = '';

//   CollectionReference users = FirebaseFirestore.instance.collection('users');

//   Future<void> addUser() {
//     return users
//         .add({
//           'UserName': UserName,
//           'Password': Password,
//           'emailId': emailId,
//         })
//         .then((value) => debugPrint('User Added'))
//         .catchError((onError) => debugPrint('Faailed to add $onError'));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Add NEw USer'),
//       ),
//       body: Form(
//         key: _formKey,
//         child: ListView(
//           children: [
//             TextFormField(
//               controller: unameController,
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20)),
//                   labelText: 'UserNAme',
//                   hintText: 'UserNAme',
//                   errorStyle: TextStyle(color: Colors.redAccent, fontSize: 15)),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Enter Usernamee';
//                 }
//                 return null;
//               },
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             TextFormField(
//               controller: pswdController,
//               obscureText: true,
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20)),
//                   labelText: 'Password',
//                   hintText: 'Password',
//                   errorStyle: TextStyle(color: Colors.redAccent, fontSize: 15)),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Enter Password';
//                 }
//                 return null;
//               },
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             TextFormField(
//               controller: emailController,
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20)),
//                   labelText: 'Email',
//                   hintText: 'Email',
//                   errorStyle: TextStyle(color: Colors.redAccent, fontSize: 15)),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Enter Email';
//                 } else if (!value.contains('@')) {
//                   return ' Invalid email iid';
//                 }
//                 return null;
//               },
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 ElevatedButton(
//                     onPressed: () {
//                       if (_formKey.currentState!.validate()) {
//                         setState(() {
//                           UserName = unameController.text;
//                           Password = pswdController.text;
//                           emailId = emailController.text;
//                           addUser();
//                         });
//                       }
//                     },
//                     child: Text('Add User')),
//                 SizedBox(
//                   width: 10,
//                 ),
//                 ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         unameController.text = '';
//                         pswdController.text = '';
//                         emailController.text = '';
//                       });
//                     },
//                     child: const Text('Reset'))
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
class AddNewUser extends StatefulWidget {
  const AddNewUser({Key? key}) : super(key: key);

  @override
  State<AddNewUser> createState() => _AddNewUserState();
}

class _AddNewUserState extends State<AddNewUser> {
  final _formKey = GlobalKey<FormState>();

  final unameController = TextEditingController();
  final passwdController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void dispose() {
    unameController.dispose();
    passwdController.dispose();
    emailController.dispose();
    super.dispose();
  }

  var UserName = '';
  var Password = '';
  var emailId = '';

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Future<void> addUser() {
    return users
        .add({
          'UserName': UserName,
          'Password': Password,
          'emailId': emailId,
        })
        .then(
          (value) => debugPrint('User Added'),
        )
        .catchError(
          (onError) => debugPrint('Failed to add new user: $onError'),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add New User')),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              TextFormField(
                controller: unameController,
                decoration: const InputDecoration(
                    labelText: 'User name:',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Username cant be blank';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                controller: passwdController,
                obscureText: true,
                decoration: const InputDecoration(
                    labelText: 'Password:',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password cant be blank';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    labelText: 'Email Id:',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email cant be blank';
                  } else if (!value.contains('@')) {
                    return 'Invalid Email Id';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          UserName = unameController.text;
                          Password = passwdController.text;
                          emailId = emailController.text;
                          addUser();
                        });
                      }
                    },
                    child: const Text('Add User'),
                  ),
                  const SizedBox(width: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        unameController.text = '';
                        passwdController.text = '';
                        emailController.text = '';
                      });
                    },
                    child: const Text('Reset'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
