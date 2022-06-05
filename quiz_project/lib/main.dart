import 'package:flutter/material.dart';
import 'package:quiz_project/brave_quiz_getstart.dart';
import 'package:quiz_project/getting_started.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyApp());
  }
}
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int currentPage = 0;

//   List<Map<String, String>> data = [
//     {
//       "text": "ja bhai chla ja yha se",
//       "image":
//           "https://www.google.com/search?q=book+image&sxsrf=ALiCzsaG47c2cR6k9iYn7aUSX7B02-2DZg:1653631747344&tbm=isch&source=iu&ictx=1&vet=1&fir=UJO_sKLtZjYq-M%252Cr3hBcMyl6QTKqM%252C_%253BOGZlShiung7ajM%252CUqxEYIesee_pjM%252C_%253BXNkYjECN1r7TZM%252CE1dDNde2jRwLyM%252C_%253BMc8xN7CCdm7HFM%252C37hDvxinV4DSIM%252C_%253BMXs7v0U96QOn-M%252C5y-_iLOyFu78-M%252C_%253BA1QFJT7p2zXirM%252CGEikSH4LWM6bxM%252C_%253BEYFHPzcgersaJM%252ChhMpmI6-nuy-2M%252C_%253B6NH2KbZvclTbwM%252C1EfArgQ2GDIJ7M%252C_%253B-HMv_6w_SGUy1M%252CcqX1kS4Ft_8fzM%252C_%253BHiyIGVzJoEJrvM%252CDUTn4ZoS2heroM%252C_%253BV5WUIgKiFFHURM%252C0z86ISCJoYZpEM%252C_%253BBEYmN_ECGGvKGM%252Cr3hBcMyl6QTKqM%252C_%253BR65F0Bshoza7aM%252CUqxEYIesee_pjM%252C_%253BOg8bA5zMQNf8FM%252CHgg3b0C_RnUurM%252C_&usg=AI4_-kQyG9oBTtTqZGaxBWCcsg2nVG0ojA&sa=X&ved=2ahUKEwjtz46ngv_3AhXtSGwGHdZGC-wQ9QF6BAgPEAE#imgrc=OGZlShiung7ajM"
//     },
//     {
//       "text": "ja bhai chla ja yha se",
//       "image":
//           "https://www.google.com/search?q=book+image&sxsrf=ALiCzsaG47c2cR6k9iYn7aUSX7B02-2DZg:1653631747344&tbm=isch&source=iu&ictx=1&vet=1&fir=UJO_sKLtZjYq-M%252Cr3hBcMyl6QTKqM%252C_%253BOGZlShiung7ajM%252CUqxEYIesee_pjM%252C_%253BXNkYjECN1r7TZM%252CE1dDNde2jRwLyM%252C_%253BMc8xN7CCdm7HFM%252C37hDvxinV4DSIM%252C_%253BMXs7v0U96QOn-M%252C5y-_iLOyFu78-M%252C_%253BA1QFJT7p2zXirM%252CGEikSH4LWM6bxM%252C_%253BEYFHPzcgersaJM%252ChhMpmI6-nuy-2M%252C_%253B6NH2KbZvclTbwM%252C1EfArgQ2GDIJ7M%252C_%253B-HMv_6w_SGUy1M%252CcqX1kS4Ft_8fzM%252C_%253BHiyIGVzJoEJrvM%252CDUTn4ZoS2heroM%252C_%253BV5WUIgKiFFHURM%252C0z86ISCJoYZpEM%252C_%253BBEYmN_ECGGvKGM%252Cr3hBcMyl6QTKqM%252C_%253BR65F0Bshoza7aM%252CUqxEYIesee_pjM%252C_%253BOg8bA5zMQNf8FM%252CHgg3b0C_RnUurM%252C_&usg=AI4_-kQyG9oBTtTqZGaxBWCcsg2nVG0ojA&sa=X&ved=2ahUKEwjtz46ngv_3AhXtSGwGHdZGC-wQ9QF6BAgPEAE#imgrc=OGZlShiung7ajM"
//     },
//     {
//       "text": "ja bhai chla ja yha se",
//       "image":
//           "https://www.google.com/search?q=book+image&sxsrf=ALiCzsaG47c2cR6k9iYn7aUSX7B02-2DZg:1653631747344&tbm=isch&source=iu&ictx=1&vet=1&fir=UJO_sKLtZjYq-M%252Cr3hBcMyl6QTKqM%252C_%253BOGZlShiung7ajM%252CUqxEYIesee_pjM%252C_%253BXNkYjECN1r7TZM%252CE1dDNde2jRwLyM%252C_%253BMc8xN7CCdm7HFM%252C37hDvxinV4DSIM%252C_%253BMXs7v0U96QOn-M%252C5y-_iLOyFu78-M%252C_%253BA1QFJT7p2zXirM%252CGEikSH4LWM6bxM%252C_%253BEYFHPzcgersaJM%252ChhMpmI6-nuy-2M%252C_%253B6NH2KbZvclTbwM%252C1EfArgQ2GDIJ7M%252C_%253B-HMv_6w_SGUy1M%252CcqX1kS4Ft_8fzM%252C_%253BHiyIGVzJoEJrvM%252CDUTn4ZoS2heroM%252C_%253BV5WUIgKiFFHURM%252C0z86ISCJoYZpEM%252C_%253BBEYmN_ECGGvKGM%252Cr3hBcMyl6QTKqM%252C_%253BR65F0Bshoza7aM%252CUqxEYIesee_pjM%252C_%253BOg8bA5zMQNf8FM%252CHgg3b0C_RnUurM%252C_&usg=AI4_-kQyG9oBTtTqZGaxBWCcsg2nVG0ojA&sa=X&ved=2ahUKEwjtz46ngv_3AhXtSGwGHdZGC-wQ9QF6BAgPEAE#imgrc=OGZlShiung7ajM"
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: SizedBox(
//         width: double.infinity,
//         child: Column(
//           children: [
//             Expanded(
//               flex: 3,
//               child: PageView.builder(
//                 onPageChanged: (value) {
//                   setState(() {
//                     currentPage = value;
//                   });
//                 },
//                 itemCount: data.length,
//                 itemBuilder: (context, index) => SplashContent(
//                     text: data[index]["text"]!, image: data[index]["image"]!),
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                 child: Column(
//                   children: [
//                     const Spacer(),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: List.generate(
//                         data.length,
//                         (index) => buildStartedPageDot(index),
//                       ),
//                     ),
//                     const Spacer(flex: 3),
//                     SizedBox(
//                       width: double.infinity,
//                       height: 40,
//                       child: ElevatedButton(
//                         onPressed: () {},
//                         child: const Text("Continue"),
//                       ),
//                     ),
//                     const Spacer(),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       )),
//     );
//   }

//   Container buildStartedPageDot(int index) {
//     return Container(
//       margin: const EdgeInsets.only(right: 5.0),
//       height: 6,
//       width: currentPage == index ? 20 : 6,
//       decoration: BoxDecoration(
//         color: currentPage == index ? Colors.red : const Color(0xffD8D8DB),
//         borderRadius: BorderRadius.circular(3),
//       ),
//     );
//   }
// }

// class SplashContent extends StatelessWidget {
//   const SplashContent({
//     Key? key,
//     required this.text,
//     required this.image,
//   }) : super(key: key);

//   final String text, image;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const Spacer(),
//         const Text('shivanshu'),
//         Text(text),
//         const Spacer(flex: 2),
//         Image.network(image)
//       ],
//     );
//   }
// }
