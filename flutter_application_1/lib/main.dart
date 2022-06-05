import 'package:flutter/material.dart';
// import 'package:flutter_application_1/pages/diary_screen.dart';
// import 'package:flutter_application_1/pages/note_page.dart';
// import 'package:flutter_application_1/screen/login_screen.dart';
// import 'package:flutter_application_1/screen/loginpage1.dart';
import 'package:flutter_application_1/state_managemnet.dart/ProviderState/product_catalog.dart';
import 'package:flutter_application_1/state_managemnet.dart/ProviderState/user_cart_mixin.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_application_1/screen/location_screen.dart';
// import 'package:flutter_application_1/state_managemnet.dart/BLOC_state.dart/using_bloc_state_with_library.dart/counter_page.dart';
// import 'package:flutter_application_1/state_managemnet.dart/BLOC_state.dart/using_bloc_state_with_library.dart/counter_view.dart';
// import 'package:flutter_application_1/state_managemnet.dart/ProviderState/counter_provider_screen.dart';
// import 'package:flutter_application_1/state_managemnet.dart/ProviderState/provider_mixin.dart';
// import 'package:provider/provider.dart';

// import 'state_managemnet.dart/ProviderState/product_catalog.dart';
// import 'state_managemnet.dart/ProviderState/user_cart_mixin.dart';

//import 'state_managemnet.dart/BLOC_state.dart/counter_bloc_app.dart';
// import 'package:flutter_application_1/state_managemnet.dart/ephiral_state_demo/counter_app.dart';
// import 'package:redux/redux.dart';
// import 'package:flutter_application_1/pages/loginscreen_dairy.dart';
// import 'package:flutter_application_1/state_managemnet.dart/Redux_state_management.dart/redux.dart';
// import 'package:flutter_application_1/pages/dairy_screen2.dart';
// import 'package:flutter_application_1/pages/diary_screen.dart';
// import 'package:flutter_application_1/pages/diary_screen3.dart';
// import 'package:flutter_application_1/screen/twitterui.dart';
// import 'package:flutter_application_1/state_managemnet.dart/Scoped_model_state.dart/ScopeModel_demo.dart';
// // import 'package:flutter_application_1/pages/dairy_screen2.dart';
// import 'package:flutter_application_1/pages/diary_screen.dart';
// import 'package:flutter_application_1/pages/note_page.dart';
//import 'package:flutter_application_1/state_managemnet.dart/counter_app.dart';
//import 'package:flutter_application_1/state_managemnet.dart/ephiral_state_demo/setlimitationstate.dart';
//import 'package:flutter_application_1/state_managemnet.dart/inherited_State_demo.dart/inherited_widget_demo.dart';
// import 'package:flutter_application_1/services/show_state.dart';
// import 'package:flutter_application_1/services/statehome1.dart';
// import 'package:flutter_application_1/screen/loginpage1.dart';
// import 'package:flutter_application_1/screen/twitterui.dart';
// import 'package:flutter_application_1/services/Stateui.dart';
// import 'package:flutter_application_1/services/statehome.dart';
// import 'package:flutter_application_1/services/statehome1.dart';
// import 'package:flutter_application_1/screen/lv1_demo.dart';
// import 'package:flutter_application_1/screen/lv2_demo.dart';
// import 'package:flutter_application_1/screen/showspeakerdetail.dart';
// import 'package:flutter_application_1/screen/speaker.dart';
// import 'package:flutter_application_1/services/speakerdetails.dart';
// import 'package:flutter_application_1/routName/routename_booking.dart';
// import 'package:flutter_application_1/screen/Cabs_drawer.dart';
// import 'package:flutter_application_1/screen/flight_drawer.dart';
// import 'package:flutter_application_1/screen/fragment_drawer.dart';
// import 'package:flutter_application_1/screen/hotel_drawer.dart';
// import 'package:flutter_application_1/screen/new_navbar.dart';

// //import 'package:flutter_application_1/screen/booking_button_navbar.dart';
// // import 'package:flutter_application_1/screen/profile.dart';
// // import 'package:flutter_application_1/screen/profile1.dart';
// //import 'package:flutter_application_1/screen/Calculator1.dart';
// //import 'package:flutter_application_1/screen/Fuel_Caluaulator.dart';
// //import 'package:flutter_application_1/screen/loginpage1.dart';
// //import 'package:flutter_application_1/screen/sirloginScreen.dart';
// //import 'package:flutter_application_1/screen/welcome.dart';
// //import 'package:flutter_application_1/screen/row1.dart';
// class bookingdrawer extends StatelessWidget {
//   const bookingdrawer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       initialRoute: pageRoute.home,
//       routes: {
//         pageRoute.home: (context) => const HomeScreen(),
//         pageRoute.hotel: (context) => const Hoteldrawer(),
//         pageRoute.flight: (context) => const Flightdrawer(),
//         pageRoute.cabs: (context) => const cabsdrawer()
//       },
//     );
//   }
// }

// void main() {
//   runApp(
//     MaterialApp(
//       initialRoute: pageRoute.home,
//       routes: {
//         pageRoute.home: (context) => const HomeScreen(),
//         pageRoute.hotel: (context) => const Hoteldrawer(),
//         pageRoute.flight: (context) => const Flightdrawer(),
//         pageRoute.cabs: (context) => const cabsdrawer()
//       },
//       home: bookingdrawer(),
//       debugShowCheckedModeBanner: false,
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         themeMode: ThemeMode.dark,
//         theme: ThemeData(
//             primaryColor: Colors.black,
//             scaffoldBackgroundColor: Colors.green,
//             appBarTheme: const AppBarTheme(
//                 backgroundColor: Colors.transparent, elevation: 0)),
//         home: const NotesPage());
//   }
// }

// Future main() async {
//   runApp(const MyApp());
// }
// void main() {
//   runApp(const MaterialApp(
//     home: DairyScreenl1(),
//     debugShowCheckedModeBanner: false,
//   ));
// }
// Future main() async {
//   final store = Store<int>(counterReducer, initialState: 0);
//   runApp(Flutterreduxapp(store: store));
// }
// class SMDemos extends StatelessWidget {
//   const SMDemos({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: CounterPage(),
//     );
//   }
// }

// Future main() async {
//   runApp(const SMDemos());
// }
// class SMdemos extends StatelessWidget {
//   const SMdemos({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ProviderCounter(),
//     );
//   }

//   Future main() async {
//     runApp(MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => Counter()),
//       ],
//       child: const SMdemos(),
//     ));
//   }
// }
class SMDemos extends StatelessWidget {
  const SMDemos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductCatalog(),
    );
  }
}

Future main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserCart()),
      ],
      child: const SMDemos(),
    ),
  );
}
// class LocationApp extends StatelessWidget {
//   const LocationApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: GeoLocationScreen(),
//     );
//   }
// }

// void main() {
//   runApp(const LocationApp());
// }
// void main() {
//   runApp(MaterialApp(
//     home: LoginPage(),
//   ));
// }
