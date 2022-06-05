import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.blue[500],
          body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Column(mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              '  Hi, Abhi!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30.0),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text('02 Jan 2022',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600)),
                          ]),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[300],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.all(8),
                          child: IconButton(
                            icon: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ),
                            splashRadius: 40,
                            hoverColor: Colors.white,
                            highlightColor: Colors.white,
                            onPressed: () {},
                          ),
                        ))
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
              child: Container(
                child: TextField(
                  controller: searchController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: 'Search',
                      fillColor: Colors.black,
                      icon: Icon(Icons.search, color: Colors.white)),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[400],

                  //  Icon(
                  //   Icons.search,
                  //   color: Colors.white,
                  // ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            )
          ])),
    );
  }
}
