// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:shared_preference/login.dart';
// import 'package:shared_preference/welcome_page.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// enum authStatus { notloggedin, loggedin }

// class OurRoot extends StatefulWidget {
//   const OurRoot({Key? key}) : super(key: key);

//   @override
//   State<OurRoot> createState() => _OurRootState();
// }

// class _OurRootState extends State<OurRoot> {
//   SharedPreferences? logindata;
//   bool? newuser;

//   @override
//   void initState() {
//     super.initState();
//     loggedinn();
//   }

//   Future<void> loggedinn() async {
//     logindata = await SharedPreferences.getInstance();
//     newuser = (logindata!.getBool('login') ?? true);
//   }

//   @override
//   Widget build(BuildContext context) {
//     Widget retVal;
//     if (logindata != null) {
//       return WelcomePage( ,);
//     }
//     return LoginScreen();
//   }
// }
