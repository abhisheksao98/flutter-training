import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/state_service.dart';

class showState extends StatelessWidget {
  static const routeName = '/showState';
  const showState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Stateq state = ModalRoute.of(context)!.settings.arguments as Stateq;
    return Scaffold(
      appBar: AppBar(
        title: Text(state.name),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 20.0,
            color: Colors.blueAccent,
            child: Column(
              children: [
                Center(child: Image.asset(state.image)),
                Center(
                  child: Text(
                    state.name,
                    style: const TextStyle(fontSize: 30.0),
                  ),
                ),
                Text(
                  state.description,
                  style: const TextStyle(fontSize: 30.0),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
