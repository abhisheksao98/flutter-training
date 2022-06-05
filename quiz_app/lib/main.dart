// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:quiz_app/demofirebase_login.dart';
// import 'package:quiz_app/firebase_options.dart';

// import 'package:quiz_app/getting_started.dart';
// import 'package:quiz_app/logincheck.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   final Future<FirebaseApp> _initialization = Firebase.initializeApp();

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: _initialization,
//         builder: (context, snapshot) {
//           if (snapshot.hasError) {
//             print('something error');
//           }
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }

//           return MaterialApp(
//               title: 'Flutter Demo',
//               theme: ThemeData(
//                 // This is the theme of your application.
//                 //
//                 // Try running your application with "flutter run". You'll see the
//                 // application has a blue toolbar. Then, without quitting the app, try
//                 // changing the primarySwatch below to Colors.green and then invoke
//                 // "hot reload" (press "r" in the console where you ran "flutter run",
//                 // or simply save your changes to "hot reload" in a Flutter IDE).
//                 // Notice that the counter didn't reset back to zero; the application
//                 // is not restarted.
//                 primarySwatch: Colors.blue,
//               ),
//               home: LoginDemo());
//         });
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:quiz_app/google_signin.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  // Optional clientId
  // clientId: '479882132969-9i9aqik3jfjd7qhci1nqf0bm2g71rm1u.apps.googleusercontent.com',
  scopes: <String>[
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

void main() {
  var runApp2 = runApp;
  const materialApp = const MaterialApp(
    title: 'Google Sign In',
    home: SignInDemo(),
  );
  runApp2(
    materialApp,
  );
}
