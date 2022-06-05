import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redux/redux.dart';

enum Actions { Increment, dcrement }

int counterReducer(int state, dynamic action) {
  if (action == Actions.Increment) return state + 1;
  if (action == Actions.dcrement) return state - 1;
  return state;
}

class Flutterreduxapp extends StatelessWidget {
  final Store<int> store;
  const Flutterreduxapp({Key? key, required this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<int>(
        store: store,
        child: MaterialApp(
            home: Scaffold(
          appBar: AppBar(
            title: const Text('State Management using Redux'),
          ),
          body: Container(
            color: Colors.amber,
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                      height: 30, child: Text('You have clicked button')),
                  SizedBox(
                    height: 30,
                    child: StoreConnector<int, String>(
                      builder: (context, counter) {
                        return Text(
                          counter,
                          style: TextStyle(fontSize: 30.0),
                        );
                      },
                      converter: (store) => store.state.toString(),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                    child: Text('Times'),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                StoreConnector<int, VoidCallback>(
                  builder: (context, callback) {
                    return FloatingActionButton(
                      onPressed: callback,
                      child: const Icon(Icons.add),
                    );
                  },
                  converter: (store) {
                    return () => store.dispatch(Actions.Increment);
                  },
                ),
                StoreConnector<int, VoidCallback>(
                  builder: (context, callback) {
                    return FloatingActionButton(
                      onPressed: callback,
                      child: const Icon(FontAwesomeIcons.subtract),
                    );
                  },
                  converter: (store) {
                    return () => store.dispatch(Actions.dcrement);
                  },
                ),
              ]),
        )));
  }
}
