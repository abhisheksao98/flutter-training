import 'dart:async';

import 'dart:io';

class ControlApp {
  var _count = 1;
  final _controller = StreamController<int>();

  ControlApp() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      _controller.sink.add(_count);
      _count++;
      if (_count > 10) {
        throw Exception('Exceeded');
      }
    });
  }

  Stream<int> get stream => _controller.stream;
}

void main() {
  final myStream = ControlApp().stream;
  myStream.listen(
    (data) {
      print('data received : $data');
    },
    onError: (error) {
      print('Exception :error');
    },
    cancelOnError: false,
    onDone: () {
      print('Done');
    },
  );
}
