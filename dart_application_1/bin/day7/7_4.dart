// import 'dart:async';

// import 'dart:io';

// Iterable<int> CounterGenerator(int max) sync* {
//   for (int i = 0; i < max; i++) {
//     yield i;
//     sleep(Duration(seconds: 1));
//   }
// }

// void main() {
//   print('program started');
//   CounterGenerator(6).forEach((element) {
//     print(element);
//   });
//   print('Program Exceuted');
// }
// import 'dart:async';

import 'dart:io';

String<int> CounterGenerator(int max) async* {
  for (var i = 0; i < max; i++) {
    yield i;
    sleep(Duration(seconds: 1));
  }
}

void main() {
  print('program started');
  CounterGenerator(6).forEach((element) {
    print(element);
  });
  print('Program Exceuted');
}
