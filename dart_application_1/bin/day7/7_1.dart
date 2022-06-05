import 'dart:async';

void main() {
  print('Starting Apllication');
  Future.delayed(Duration(seconds: 5), () {
    throw Exception("Error");
    //return 100;
  }).then((value) {
    print('long running task completed $value');
  }).catchError((error) {
    print('error message received $error');
  }).whenComplete(() {
    print('Task is completed');
  });
  print('Waiting for thee value');
}
