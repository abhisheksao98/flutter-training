import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final double coverheight = 200.0;
  final double profileheight = 150.0;

  @override
  Widget build(BuildContext context) {
    final double top = coverheight - profileheight / 2;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.verified_user_sharp),
        title: const Text('Profile'),
      ),
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: Bannerimage(),
          ),
          Positioned(
            top: top,
            child: Profileimage(),
          ),
          Positioned(top: 300, child: writing()),
          Positioned(top: 350, left: 70, right: 70, child: writing1()),
          Positioned(top: 440, left: 20, right: 20, child: writing2()),
          Positioned(top: 540, left: 20, child: writing3()),
          Positioned(top: 570, left: 20, child: writing4()),
        ],
      ),
    );
  }

  Widget Bannerimage() => Container(
        child: Image.network(
          'https://media.istockphoto.com/photos/abstract-geometric-network-polygon-globe-graphic-background-picture-id1208738316?b=1&k=20&m=1208738316&s=170667a&w=0&h=f4KWULKjL770nceDM6xi32EbfIgMtBwSp5fPxIx08wc=',
          width: 600,
          alignment: Alignment.center,
          height: coverheight,
          fit: BoxFit.cover,
        ),
      );
  Widget Profileimage() => CircleAvatar(
        radius: profileheight / 2,
        backgroundImage: NetworkImage(
            'https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg'),
      );
  Widget writing() => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: const Text(
              'Sekhar Srinivasan',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            child: const Text(
              'Microsoft Certified Trainer',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
        ],
      );

  Widget writing1() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              //alignment: Alignment.topRight,
              child: const Text('Likes\n10M',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ))),
          const SizedBox(
            height: 90.0,
          ),
          Container(
              child: const Text('Following\n        0',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ))),
          Container(
            alignment: Alignment.centerRight,
            child: const Text(
              'Followers\n    100K',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      );
  // Widget writing5() => Container(
  //     alignment: Alignment.centerRight,
  //     child: const Text('Followers\n    100K',
  //         style: TextStyle(
  //           fontSize: 20.0,
  //           fontWeight: FontWeight.bold,
  //           color: Colors.black,
  ///  )));
  Widget writing2() => Container(
      alignment: Alignment.topCenter,
      child: const Text(
          "About\nSekhar Srinivasan (Microsoft Certified Trainer) is well known for his good track record as one of the best I.T.",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )));
  Widget writing3() => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Image.network(
              'https://cdn-icons-png.flaticon.com/512/281/281769.png',
              height: 20.0,
              width: 20.0,
            ),
          ),
          Container(
              child: const Text(
            '  sekharonline4u@gmail.com',
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          )),
        ],
      );
  Widget writing4() => Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Container(
          child: Image.network(
            'https://cdn2.iconfinder.com/data/icons/font-awesome/1792/phone-512.png',
            height: 20.0,
            width: 20.0,
          ),
        ),
        Container(
            child: const Text(
          '  .9010921619',
          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
        ))
      ]);
}
