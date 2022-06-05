import 'dart:io';

void main() {
  var numbers = Map<int, String>();
  numbers[0] = 'Aman';
  numbers[1] = 'Abhishek';
  numbers[2] = 'Payal';
  print(numbers);
  var allkeys = numbers.keys;
  print(allkeys);
  var allvalues = numbers.values;
  print(allvalues);
  numbers.remove(2);
  print(numbers);
}
