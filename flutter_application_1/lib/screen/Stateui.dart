import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/show_state.dart';
import 'package:flutter_application_1/services/state_variable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class stateui extends StatelessWidget {
  stateui({Key? key}) : super(key: key);
  final states = StateService().getStates();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            'Know About your State',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: states.length,
          itemBuilder: (context, index) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: const [
                    Padding(
                      padding: const EdgeInsets.only(left: 100, top: 40),
                      child: Text(
                        'Select The State ',
                        style: TextStyle(
                            fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 46,
                        left: 5,
                      ),
                      child: Icon(
                        FontAwesomeIcons.locationArrow,
                        color: Colors.lightBlue,
                      ),
                    )
                  ]),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: GestureDetector(
                          child: Image.network(
                            'https://cdn.iconscout.com/icon/free/png-256/delhi-139357.png',
                            height: 150,
                            width: 150,
                          ),
                          onTap: () {
                            var state = states[index];
                            Navigator.pushNamed(context, showState.routeName,
                                arguments: state);
                          },
                        ),
                      ),
                      // ListTile(
                      //   title: Text('Delhi'),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: GestureDetector(
                          child: Image.network(
                            'https://cdn4.iconfinder.com/data/icons/landmarks-set1/1024/Gateway_Of_India_Mumbai-512.png',
                            height: 110,
                            width: 110,
                          ),
                          onTap: () {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 70),
                        child: GestureDetector(
                          child: Image.network(
                            'https://cdn.iconscout.com/icon/free/png-256/chennai-1-119692.png',
                            height: 100,
                            width: 100,
                          ),
                          onTap: () {},
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 50),
                            child: Text(
                              'Delhi',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 80),
                            child: Text(
                              'Mumbai',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 60),
                            child: Text(
                              'Chennai',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 20.0),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 70),
                            child: GestureDetector(
                              child: Image.network(
                                'https://cdn2.iconfinder.com/data/icons/landmarks-22/100/golden-temple-landmarks-national-symbol-architecture-india-punjab-amritsar-golden-temple-512.png',
                                height: 120,
                                width: 150,
                              ),
                              onTap: () {},
                            ),
                          ),
                          // ListTile(
                          //   title: Text('Delhi'),
                          // ),
                          Padding(
                            padding: const EdgeInsets.only(top: 70),
                            child: GestureDetector(
                              child: Image.network(
                                'https://cdn.iconscout.com/icon/premium/png-256-thumb/hyderabad-112414.png',
                                height: 100,
                                width: 100,
                              ),
                              onTap: () {},
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 70),
                            child: GestureDetector(
                              child: Image.network(
                                'https://static.thenounproject.com/png/2165511-200.png',
                                height: 130,
                                width: 130,
                              ),
                              onTap: () {},
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 50),
                                child: Text(
                                  'Punjab',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.0),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 60),
                                child: Text(
                                  'Hyderabad',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.0),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 35),
                                child: Text(
                                  'Banglore',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.0),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
                ]);
          }),
    );
  }
}
