// import 'package:flutter/material.dart';

// class lv2demo extends StatelessWidget {
//   final List<String> Courses = [
//     'ADB by me',
//     'started with python',
//     'no cousrses',
//     'online study',
//   ];
//   lv2demo({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Courses'),
//       ),
//       body: ListView.separated(
//           itemBuilder: ((context, index) {
//             return Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Card(
//                 elevation: 10.0,
//                 shadowColor: Colors.blue,
//                 child: ListTile(
//                   title: Text(Courses[index]),
//                 ),
//               ),
//             );
//           }),
//           separatorBuilder: (context, index) => const Divider(
//                 color: Colors.black,
//                 thickness: 10.0,
//               ),
//           itemCount: Courses.length),
//     );
//   }
// }
import 'dart:html';

import 'package:flutter/material.dart';

class lv2demo extends StatelessWidget {
  final List<String> Courses = [
    'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80',
    'https://images.pexels.com/photos/302743/pexels-photo-302743.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/302743/pexels-photo-302743.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/302743/pexels-photo-302743.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
  ];
  lv2demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
      ),
      body: ListView.separated(
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                elevation: 50.0,
                shadowColor: Colors.blue,
                child: ListTile(
                  title: Image.network(Courses[index]),
                ),
              ),
            );
          }),
          separatorBuilder: (context, index) => const Divider(
                color: Colors.black,
                thickness: 10.0,
              ),
          itemCount: Courses.length),
    );
  }
}
