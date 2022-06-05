// void main() {
//   var numbers = [10, 20, 30, 40, 50];
//   var squaednum = numbers.map((numbers) => numbers * numbers);
//   print(squaednum);
//   print(numbers);
// }
// void main() {
//   int number = 6;
//   for (int i = 1; i <= 10; i++) {
//     var table = number * i;
//     print(table);
//   }
// // }
// void main() {
//   var store = Map<int, String>();
//   store[0] = 'aman';
//   store[1] = 'ayush';
//   store[2] = 'anurag';
//   print(store);
//   print(store.values);
// }
//
// import 'dart:io';

// void calculateSal(int a, int b, int c, int d) => print(a + b + c - d);

// void main(List<String> args) {
//   int a = int.parse(stdin.readLineSync()!);
//   int b = int.parse(stdin.readLineSync()!);
//   int c = int.parse(stdin.readLineSync()!);
//   int d = int.parse(stdin.readLineSync()!);
//   calculateSal(a, b, c, d);
// }

// import 'dart:io';

// void calculateSal(int a, int b, [int c = 0, int d = 0]) => print(a + b + c - d);

// void main(List<String> args) {
//   // int a = int.parse(stdin.readLineSync()!);
//   // int b = int.parse(stdin.readLineSync()!);
//   // int c = int.parse(stdin.readLineSync()!);
//   // int d = int.parse(stdin.readLineSync()!);
//   calculateSal(
//     10,  20,
//   );
// }
// import 'dart:html';

/// Higher order Function
int factorial(int x) {
  if (x == 1) {
    return 1;
  } else {
    return x * factorial(x - 1);
  }
}

int squraednum(int no) => no * no;

List<int> forAll(Function actions, List<int> values) {
  var result = <int>[];
  for (int i = 0; i < values.length; i++) {
    result.add(actions(values[i]));
  }
  return result;
}

void main() {
  var numbers = [2, 3, 5];
  var factorials = forAll(factorial, numbers);
  var squrenum = forAll(squraednum, numbers);
  print(numbers);
  print(factorials);
  print(squrenum);
}

// class Student {
//   late int rollNo;
//   String studentName;
//   String courseName;
//   late double discount;
//   late double courseFee;

//   // Generative Constructor
//   Student(this.rollNo, this.studentName, this.courseName) {
//     this.discount = 0;
//     this.courseFee = 0;
//   }

//   //Named Constructor

//   Student.withCourseFee(this.rollNo, this.studentName, this.courseName,
//       this.discount, this.courseFee);

//   Student.withDiscount(this.rollNo, this.studentName, this.courseName,
//       this.discount, this.courseFee);

//   void showDetails() {
//     print(
//       'Rollno : $rollNo\nStudent Name : $studentName\nCourse Name : $courseName\nDiscount : $discount%\nCourseFree : Rs.$courseFee',
//     );
//     print('---------------------------');
//   }
// }

// void main() {
//   Student s1 = Student(101, 'Amar', 'Mobile App Development');
//   Student s2 =
//       Student.withCourseFee(102, 'Jeet', 'iOS App Development', 20, 10);
//   Student s3 =
//       Student.withDiscount(103, 'Amarjeet', 'Android App Development', 20, 5);

//   s1.showDetails();
//   s2.showDetails();
//   s3.showDetails();
// }
