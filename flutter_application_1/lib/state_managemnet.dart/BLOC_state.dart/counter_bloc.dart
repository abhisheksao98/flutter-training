import 'dart:async';

import 'package:flutter_application_1/state_managemnet.dart/BLOC_state.dart/counter_events.dart';

class CounterBloc {
//?Data
  int _counter = 0;

//?Controllers to maintain the state
  final _counterStateController = StreamController<int>();

  StreamSink<int> get _intCounter => _counterStateController.sink;
  Stream<int> get counter => _counterStateController.stream;

//?Controllers to Handle the events
  final _counterEventController = StreamController<CounterEvents>();
  Sink<CounterEvents> get counterEventSink => _counterEventController.sink;

  CounterBloc() {
    _counterEventController.stream.listen((event) {
      if (event is IncrementEvent) _counter++;
      if (event is DecrementEvent) _counter--;
      _intCounter.add(_counter);
    });
  }

//?Dispose all the Controllers created
  void dispose() {
    _counterStateController.close();
    _counterEventController.close();
  }
}
