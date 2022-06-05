//100 years question
// import 'dart:io';

// void main() {
//   print('Enter your name');
//   var name = stdin.readLineSync();
//   print('Enter your age');
//   var age = int.parse(stdin.readLineSync()!);
//   var i = 100 - age;
//   print('You need $i more years to live 100 years');
//
// import 'dart:io';

// void main() {
//   print('Enter a number');
//   var num = int.parse(stdin.readLineSync()!);
//   if (num % 2 == 0) {
//     print('You entered an even number');
//   } else {
//     print('You entered an odd number');
//   }
// }
// void main() {
//   List<int> a = [1, 1, 3, 2, 4, 1, 5, 8, 12, 10, 9, 1, 2, 45, 23, 56];
//   for (var num in a) {
//     //for (int i = 0; i < a.length; i++) {
//     if (num < 5) {
//       print(num);
//     }
//     //throw Exception('Invalid');
//   }
// }
// import 'dart:io';

// void main() {
//   print('Enter a number');
//   var num = int.parse(stdin.readLineSync()!);
//   for (var i = 1; i <= num; i++) {
//     if (num % i == 0) {
//       print(i);
//     }
//   }
// }
// void main() {
//   var numbers = [1, 3, 4, 5, 6, 7, 8, 10, 12, 34, 22, 11, 54, 66];
//   var numbers1 = [
//     1,
//     2,
//     3,
//     4,
//     5,
//     6,
//     7,
//     8,
//     9,
//     10,
//     34,
//     45,
//     22,
//     11,
//     56,
//     44,
//     33,
//     11
//   ];
//   var c = [];
//   for (var a in numbers) {
//     for (var b in numbers1)
//       if (a == b) {
//         c.add(a);
//       }
//   }
//   print(c);
  // var numers3 = [...numbers, ...numbers1];
  // print(numers3);
}

// void main() {
//   var a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 2, 23, 4, 54, 54, 87, 55, 44];
//   var c = [];
//   for (var b in a) {
//     // for(int i=0;i<a.length;i++){
//     if (b % 2 == 0) {
//       c.add(b);
//     }
//   }
//   print(c);
// }
