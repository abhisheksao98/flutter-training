import 'dart:io';

//int add(int no1, int no2) => no1 + no2;
add(no1, no2) => no1 + no2;
void main() {
  print('Enter the values in no1 and no2');
  var no1 = int.parse(stdin.readLineSync()!);
  var no2 = int.parse(stdin.readLineSync()!);
  var result = add(no1, no2);
  print('sum of $no1 and $no2 is $result');
  var result1 = add('aman ', 'sao');
  print(result1);
}
