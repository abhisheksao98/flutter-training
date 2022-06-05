import 'package:flutter/material.dart';

class profileshow extends StatefulWidget {
  const profileshow({Key? key}) : super(key: key);

  @override
  State<profileshow> createState() => _profileshowState();
}

class _profileshowState extends State<profileshow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.verified_user_sharp),
          title: const Text('Profile'),
        ),
        body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                //child: Container(

                children: [
                  Image.network(
                    'https://media.istockphoto.com/photos/abstract-geometric-network-polygon-globe-graphic-background-picture-id1208738316?b=1&k=20&m=1208738316&s=170667a&w=0&h=f4KWULKjL770nceDM6xi32EbfIgMtBwSp5fPxIx08wc=',
                    height: 200,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 80, // Image radius
                          backgroundImage: NetworkImage(
                            'https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg',
                          ),
                        ),
                      ])
                ])));
  }
}
