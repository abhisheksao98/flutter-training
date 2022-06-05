import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Twitter extends StatelessWidget {
  const Twitter({Key? key}) : super(key: key);
  final checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(FontAwesomeIcons.userFriends),
          title: const Center(
            child: Icon(FontAwesomeIcons.twitter),
          ),
          actions: [Icon(FontAwesomeIcons.search)],
        ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 15),
                      child: Image.network(
                        'https://image.shutterstock.com/image-photo/head-shot-portrait-close-smiling-260nw-1714666150.jpg',
                        height: 65,
                        width: 65,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Amul Pandey',
                        style: TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Padding(
                        padding: EdgeInsets.only(top: 24, left: 2),
                        child: Text(
                          '@youknowmyname',
                          style: TextStyle(
                              fontSize: 9.0, fontWeight: FontWeight.w600),
                        )),
                    const Padding(
                        padding: EdgeInsets.only(top: 24, left: 130),
                        child: Text(
                          '10s',
                          style: TextStyle(
                              fontSize: 9.0, fontWeight: FontWeight.w100),
                        )),
                  ],
                ),
                Column(
                  children: const [
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: Text(
                        'Nothing is better than home',
                        style: TextStyle(
                            height: -1.5,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    )
                  ],
                )
              ],
            ),
            if (checked)
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 70, top: 0),
                      child: Card(
                        child: Image.network(
                          'https://image.shutterstock.com/image-vector/night-time-full-moon-view-260nw-1460493929.jpg',
                        ),
                      ),
                    ),
                  ]),
            Row(
              textBaseline: TextBaseline.alphabetic,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 85),
                  child: Icon(
                    FontAwesomeIcons.share,
                    size: 15,
                  ),
                ),
                Text(
                  ' 150.9k',
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Icon(FontAwesomeIcons.retweet),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Icon(FontAwesomeIcons.heart),
                ),
                Text(
                  ' 200K',
                  style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Icon(FontAwesomeIcons.forward),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Image.network(
                    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    height: 65,
                    width: 65,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    'Abhishek Sao',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.only(top: 18, left: 5),
                    child: Text(
                      '@noname',
                      style:
                          TextStyle(fontSize: 9.0, fontWeight: FontWeight.w600),
                    )),
                const Padding(
                    padding: EdgeInsets.only(top: 19, left: 180),
                    child: Text(
                      '10s',
                      style:
                          TextStyle(fontSize: 9.0, fontWeight: FontWeight.w100),
                    )),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Text(
                    'New Ceo of Twitter is Elon Musk',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w800,
                        height: -2),
                  ),
                ),
                Row(
                  textBaseline: TextBaseline.alphabetic,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 90),
                      child: Icon(
                        FontAwesomeIcons.share,
                        size: 15,
                      ),
                    ),
                    Text(
                      ' 10k',
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 60),
                      child: Icon(FontAwesomeIcons.retweet),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 60),
                      child: Icon(FontAwesomeIcons.heart),
                    ),
                    Text(
                      ' 70K',
                      style: TextStyle(
                          fontSize: 12.0, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Icon(FontAwesomeIcons.forward),
                    )
                  ],
                )
              ],
            ),
          ],
        )

        // Padding(
        //   padding: const EdgeInsets.only(left: 90, top: 0),
        );
  }
}
